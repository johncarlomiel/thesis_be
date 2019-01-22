const express = require("express");
const jwt = require('jsonwebtoken');
const mysql = require("mysql")
const cors = require('cors');
const formidable = require('formidable');
const bcrypt = require('bcrypt');
var uniqid = require('uniqid');
path = require('path')
var fs = require('fs')
var pool = mysql.createPool({
    connectionLimit: 1,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'survey'
});

const app = express();
app.use(express.json());
app.use(cors())
app.use(express.urlencoded({ extended: true }))
app.use(express.static('./'))

function deleteCurrentPhoto(req, res, next) {
    pool.getConnection((error, connection) => {
        if (error) throw errror;

        let query = connection.query(`SELECT eform_path FROM users WHERE id = ${req.userData.id}`, (err, results, fields) => {
            if (err) {
                res.json({ message: "Mysql Error" });
                connection.release();
                throw err;
            };
            // When done with the connection, release it.
            connection.release();
            if (results[0].eform_path != "") {
                fs.unlink(results[0].eform_path, (err) => {
                    if (err) throw err;
                    console.log(results[0].eform_path + " Deleted");
                });
            } else {
                console.log("empty")

            }

            next();

            console.log(results)
        })
        console.log(query.sql)
    })
}

function uploadPhoto(req, res, next) {


    var form = new formidable.IncomingForm();
    var profilePath;

    form.on('error', (err) => {
        console.log(err)
    });

    form.parse(req, (err, fields, files) => {
        console.log(req)
        if (err) throw err;

        req.body = fields;
        console.log(req.body.image)



    });

    form.on('fileBegin', function (name, file) {
        console.log(file)
        let newImageName = req.userData.id + '.' + file.name.split('.').pop();
        profilePath = __dirname + '/public/uploads/' + Date.now() + newImageName;
        file.path = profilePath;
        profilePath = 'public/uploads/' + Date.now() + newImageName;

    });

    form.on('file', function (name, file) {
        req.body.eform = profilePath;
        console.log('Uploaded ' + file.name);
    });

    form.on('end', () => {
        req.body.eform = profilePath;
        next();
    });
}
app.post(`/api/submitEform`, [verifyToken, uploadPhoto, deleteCurrentPhoto], (req, res) => {

    pool.getConnection((err, connection) => {
        let query = connection.query(`UPDATE users SET eform_path = ? WHERE id = ?`, [req.body.eform, req.userData.id], (error, results, fields) => {
            if (error) {
                // When done with the connection, release it.
                res.json({ message: "Mysql Error" });
                connection.release();
                throw error;
            }
            // When done with the connection, release it.
            connection.release();
            res.status(200).json({ message: "Eform Updated" });

        });
        console.log(query.sql)

    })
});

app.get("/api/getEform", verifyToken, (req, res) => {



    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT eform_path FROM users WHERE id = ${req.userData.id}`, (error, results, fields) => {
            if (error) {
                res.json({ message: "Mysql Error" });
                connection.release();
                throw error;
            }
            // When done with the connection, release it.
            connection.release();
            if (results[0].eform_path == "") {
                res.status(200).json({ hasEform: false, url: "" })
            } else {

                res.status(200).json({ url: "http://192.168.100.3:5000/" + results[0].eform_path, hasEform: true })
            }


        });
    })
});


app.post("/api/register", (req, res) => {

    pool.getConnection((err, connection) => {
        connection.query(`SELECT * FROM users WHERE username="${req.body.username}"`, (error, results, fields) => {
            if (results.length == 0) {
                //Insert it
                //Hash the password
                let hash = bcrypt.hashSync(req.body.password, 10);

                connection.query("INSERT INTO users SET ?", {
                    username: req.body.username, password: hash, name: req.body.name, type: "user"
                },
                    (error, results, fields) => {
                        if (error) {
                            res.json({ message: "Mysql Error" });
                            connection.release();
                            throw error;
                        }
                        console.log(results)
                        //Insert default value in problems
                        connection.query("INSERT INTO reserve SET ?", {
                            user_id: results.insertId
                        }, (error, results, fields) => {
                            if (error) throw error;
                            // When done with the connection, release it.
                            connection.release();
                        });



                        res.status(200).json({ message: "Register success", status: 200 })
                    });




            } else {
                // When done with the connection, release it.
                connection.release();
                res.status(403).json({ message: "Username already taken" })

            }
        });







    });

});


app.get('/api/checkSdsStatus', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) {
            res.json({ message: "Mysql Error" });
            connection.release();
            throw err;
        };
        let query = connection.query(`SELECT * FROM user_code WHERE user_id=${req.userData.id}`, (error, results, fields) => {
            if (error) {
                res.json({ message: "Mysql Error" });
                connection.release();
                throw error;
            }
            // When done with the connection, release it.
            connection.release();
            res.status(200).json(results)
        })
    });
})

app.post("/api/login", (req, res) => {

    pool.getConnection((err, connection) => {
        if (err) throw err;

        connection.query("SELECT * FROM `users` WHERE `username` = ?",
            [req.body.username],
            (error, results, fields) => {
                if (error) throw error;
                // When done with the connection, release it.
                connection.release();
                if (results.length > 0) {

                    if (bcrypt.compareSync(req.body.password, results[0].password)) {
                        let payload = {
                            id: results[0].id,
                            username: results[0].username,
                            name: results[0].name
                        }
                        jwt.sign(payload, "shhhhhh", { expiresIn: '1d' }, (err, token) => {
                            if (err) throw err;

                            res.json(token);

                        });
                    } else {
                        res.status(401).json({ message: "Invalid username or password" })

                    }
                } else {
                    res.status(401).json({ message: "Invalid username or password" })
                }


            });


    });

});

app.post("/api/submitResult", verifyToken, (req, res) => {

    let codes = [];
    req.body.result.forEach(element => {
        codes.push([req.userData.id, element]);
    });

    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT * FROM user_code WHERE user_id=${req.userData.id}`, (error, results, fields) => {
            console.log(results.length)

            if (results.length == 0) {
                console.log("true")
                let query = connection.query('INSERT INTO user_code (user_id, code) VALUES ?', [codes], (error, results, fields) => {
                    if (error) throw error;
                    // When done with the connection, release it.
                    connection.release();
                    console.log(pool.config.connectionLimit)
                    console.log("number of connection:" + pool._allConnections.length)
                    res.status(200).json({ hetto: "wer" })



                });
            } else {
                console.log(pool.config.connectionLimit)
                console.log("number of connection:" + pool._allConnections.length)
                connection.release();
                console.log("number of connection:" + pool._freeConnections.length)
                res.status(200)
            }

        })
        console.log(query.sql)
    });

});

app.post("/api/submitSummaryCode", verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query("UPDATE users SET ? WHERE ?", [{ summary_code: req.body.code }, { id: req.userData.id }], (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json({
                message: "Inserted"
            });
        });
        console.log(query.sql)
    });
});


app.post("/api/submitLetters", verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        // Transform every object into an array and push it into another array to meet mysql bulk inserting
        bulkData = Array.apply(null, Array());
        req.body.letters.forEach(element => {
            bulkData.push([req.userData.id, element.value, element.letter, element.word])
        });
        // console.log(bulkData)
        if (err) throw err;

        let query = connection.query(`SELECT id FROM users WHERE users.id = ${req.userData.id} AND users.id NOT IN (SELECT letters.user_id FROM letters)`, (error, results, fields) => {
            if (error) throw error;
            console.log("Length: " + results.length)
            if (results.length > 0) {
                let query = connection.query("INSERT INTO letters (user_id, value, letter, word) VALUES ?", [bulkData], (error, results, fields) => {
                    if (error) {
                        res.status(400);
                        throw error;
                    };
                    connection.release();
                    // console.log(results)
                    res.json({
                        message: "Inserted"
                    });

                });
            } else {
                connection.release();
            }


        })

        // console.log(query.sql)
        // console.log("Query : " + query)
    });
});



app.get("/api/checkSession", verifyToken, (req, res) => {

    res.status(200).json(req.userData);
});

app.get('/api/getInfo', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        let tablenames = "name, year, course, age, gender, religion, place_birth, addr, cp_num, mother_name, mother_religion, mother_job, father_name, father_religion, father_job, not_livingwith_parents, study_status, transpo, allowed_night, study_helper, hobby, have_friends";
        if (err) throw err;
        let query = connection.query(`SELECT ${tablenames} FROM users WHERE id=${req.userData.id}`, (err, results, fields) => {
            if (err) throw err;
            // When done with the connection, release it.
            connection.release();
            res.status(200).json(results[0]);

        });
    })
});

app.get('/api/getMoreInfo', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        let tablenames = "troubling_problems, someone_to_talk, happiest_expi, downful_expi, ambition, want_to_change";
        if (err) throw err;
        let query = connection.query(`SELECT ${tablenames} FROM users WHERE id=${req.userData.id}`, (err, results, fields) => {
            if (err) throw err;
            // When done with the connection, release it.
            connection.release();
            res.status(200).json(results[0]);

        });
    })
});

app.get('/api/getProblems', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;



        let query = connection.query(`SELECT * FROM reserve WHERE user_id = ${req.userData.id}`, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            res.status(200).json(results[0])
        });
        console.log(query.sql)

    })
});


app.put('/api/updateInfo', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let data = Object.values(req.body);
        let sql = `UPDATE users SET name = ?, course = ?, age = ?, gender = ?, religion = ?, place_birth = ?, addr = ?, cp_num = ?, mother_name = ?, mother_religion = ?, mother_job = ?,
        father_name = ?, father_religion = ?, father_job = ?, not_livingwith_parents = ?, study_status = ?, transpo = ?, allowed_night = ?, study_helper = ?, hobby = ?, have_friends = ?, year = ? WHERE id = ?`;

        data.push(req.userData.id)
        let qwe = connection.query(sql, data, (err, results, fields) => {
            if (err) {
                res.status(400).json({ err })
                throw err;
            }
            // When done with the connection, release it.
            connection.release();
            res.status(200).json({ message: "Updated" });
        });
        console.log(qwe.sql)


    })

});

app.put('/api/updateMoreInfo', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let data = Object.values(req.body);
        let sql = `UPDATE users SET troubling_problems = ?, someone_to_talk = ?, happiest_expi = ?, downful_expi = ?, ambition = ?, want_to_change = ? WHERE id = ?`
        data.push(req.userData.id)

        let query = connection.query(sql, data, (error, results, fields) => {
            if (error) {
                res.status(400).json({ message: "sql error" });
                throw error;
            }
            // When done with the connection, release it.
            connection.release();
            res.status(200).json({ message: "Sucess" })
        });
        console.log(query.sql)

    });

});


app.put('/api/updateProblems', verifyToken, (req, res) => {
    let holder = Array.apply(null, Array());
    let fieldnameArr = Array.apply(null, Array());
    let valuesArr = Array.apply(null, Array())
    req.body.data.forEach(element => {
        element.questions.forEach(element => {
            holder.push(element)
            fieldnameArr.push(element.fieldname + " = ?");
            valuesArr.push(element.value)
        });
    });
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`UPDATE reserve SET ${fieldnameArr.toString()} WHERE user_id = ${req.userData.id}`, valuesArr, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            res.status(200).json({ status: 200, message: "Success!" })

        });
    });
});



app.get('/api/completeTest', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT code FROM user_code WHERE user_id=${req.userData.id}`, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();

        })
    })
})

app.get('/api/getMyCode', verifyToken, (req, res) => {

    let holder = [];
    function getCodes(callback) {
        pool.getConnection((err, connection) => {
            if (err) throw err;


            const query = connection.query(`SELECT code FROM user_code WHERE user_id=${req.userData.id}`, (error, results, fields) => {
                if (error) throw error;
                console.log(results.length)
                results.forEach((element, index) => {
                    const query = connection.query('SELECT * from `code` WHERE `code` = ?', [element.code], (error, results, fields) => {
                        if (error) throw error;

                        holder.push({
                            name: element.code,
                            result: results
                        })
                        console.log(index)
                        console.log(query.sql)
                    })

                });



                setTimeout(() => {
                    // When done with the connection, release it.
                    connection.release();
                    callback(holder)
                }, 1000)



            });










        });
    }

    getCodes((data) => {
        res.status(200).json(data)
        console.log(data)
    })

});


//Admin Routes
//Get all users
app.get('/api/admin/users', verifyAdminToken, (req, res) => {
    if (req.query.type == "user") {
        pool.getConnection((err, connection) => {
            connection.query("SELECT id, username, name FROM users WHERE type='user'", (error, results, fields) => {
                // When done with the connection, release it.
                connection.release();
                res.status(200).json(results)
            });
        })
    } else {
        pool.getConnection((err, connection) => {
            connection.query("SELECT id, username, name, type FROM users", (error, results, fields) => {
                // When done with the connection, release it.
                connection.release();
                res.status(200).json(results)
            });
        })
    }
});

app.put("/api/admin/account", verifyAdminToken, (req, res) => {
    if (req.body.fieldname != "" && req.body.value != "" && req.body.id) {
        pool.getConnection((err, connection) => {
            if (err) throw err;
            let query = connection.query(`UPDATE users SET ${req.body.fieldname} = ? WHERE id = ?`, [req.body.value, req.body.id], (error, results, fields) => {
                if (error) throw error;
                connection.release();
                res.json({ message: "Success" });

            })
            console.log(query.sql)
        })
    }
});


app.get('/api/admin/resultSearch', verifyAdminToken, (req, res) => {
    console.log(req.body)
    if (req.query.condition == "print-section-old") {
        pool.getConnection((err, connection) => {
            let query = connection.query(`SELECT * FROM users WHERE summary_code = '' AND isResPrinted = 0 AND (username LIKE ${connection.escape("%" + req.query.keyword + "%")} OR name LIKE ${connection.escape("%" + req.query.keyword + "%")}) AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
                if (error) throw error;
                res.json(results);
                connection.release();
            });
            console.log(query.sql)
        });
    } else if (req.query.condition == "print-section-new") {
        pool.getConnection((err, connection) => {
            let query = connection.query(`SELECT * FROM users WHERE summary_code <> '' AND isResPrinted = 0 AND (username LIKE ${connection.escape("%" + req.query.keyword + "%")} OR name LIKE ${connection.escape("%" + req.query.keyword + "%")}) AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
                if (error) throw error;
                res.json(results);
                connection.release();
            });
            console.log(query.sql)
        });
    } else if (req.query.condition == "old-archive") {
        pool.getConnection((err, connection) => {
            let query = connection.query(`SELECT * FROM users WHERE summary_code = '' AND isResPrinted = 1 AND (username LIKE ${connection.escape("%" + req.query.keyword + "%")} OR name LIKE ${connection.escape("%" + req.query.keyword + "%")}) AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
                if (error) throw error;
                res.json(results);
                connection.release();
            });
            console.log(query.sql)
        });
    } else if (req.query.condition == "new-archive") {
        pool.getConnection((err, connection) => {
            let query = connection.query(`SELECT * FROM users WHERE summary_code <> '' AND isResPrinted = 1 AND (username LIKE ${connection.escape("%" + req.query.keyword + "%")} OR name LIKE ${connection.escape("%" + req.query.keyword + "%")}) AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
                if (error) throw error;
                res.json(results);
                connection.release();
            });
            console.log(query.sql)
        });
    } else if (req.query.condition == "original-archive") {
        pool.getConnection((err, connection) => {
            let query = connection.query(`SELECT id,username, name FROM users WHERE isResPrinted = 1 AND users.id IN (SELECT user_id FROM user_code) AND (username LIKE ${connection.escape("%" + req.query.keyword + "%")} OR name LIKE ${connection.escape("%" + req.query.keyword + "%")})`, (error, results, fields) => {
                if (error) throw error;
                res.json(results);
                connection.release();
            });
            console.log(query.sql)
        });
    } else if (req.query.condition == "original-print") {
        pool.getConnection((err, connection) => {
            let query = connection.query(`SELECT * FROM users WHERE isResPrinted = 0 AND users.id IN (SELECT user_id FROM user_code) AND (username LIKE ${connection.escape("%" + req.query.keyword + "%")} OR name LIKE ${connection.escape("%" + req.query.keyword + "%")})`, (error, results, fields) => {
                if (error) throw error;
                res.json(results);
                connection.release();
            });
            console.log(query.sql)
        });

    } else {
        res.status(400);
    }
});
//Serach
app.get("/api/admin/searchUsers", verifyAdminToken, (req, res) => {
    console.log(req.query.type)
    if (req.query.type == "user") {
        pool.getConnection((err, connection) => {
            let condition = {
                type: "user"
            }
            let query = connection.query(`SELECT * FROM users WHERE ? AND (username LIKE ${connection.escape('%' + req.query.keyword + '%')} OR name LIKE ${connection.escape('%' + req.query.keyword + '%')})`, [condition], (error, results, fields) => {
                if (error) throw error;
                // When done with the connection, release it.
                connection.release();
                res.status(200).json(results)
            })
            console.log(query.sql)
        })
    } else {
        pool.getConnection((err, connection) => {
            let query = connection.query(`SELECT * FROM users WHERE (username LIKE ${connection.escape('%' + req.query.keyword + '%')} OR name LIKE ${connection.escape('%' + req.query.keyword + '%')})`, (error, results, fields) => {
                if (error) throw error;
                // When done with the connection, release it.
                connection.release();
                res.status(200).json(results)
            })
            console.log(query.sql)
        })
    }
})

app.get('/api/admin/getInfo', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {

        let tablenames = "name, course, age, gender, religion, place_birth, addr, cp_num, mother_name, mother_religion, mother_job, father_name, father_religion, father_job, not_livingwith_parents, study_status, transpo, allowed_night, study_helper, hobby, have_friends";
        if (err) throw err;
        let query = connection.query(`SELECT ${tablenames} FROM users WHERE id=${req.query.id}`, (err, results, fields) => {
            if (err) throw err;
            // When done with the connection, release it.
            connection.release();
            res.status(200).json(results[0]);

        });

    })
});

app.get('/api/admin/getEform', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT eform_path FROM users WHERE id = ${req.query.id}`, (error, results, fields) => {
            if (error) {
                res.status(404).json({ message: "Error" });
                throw error;
            }
            // When done with the connection, release it.
            connection.release();
            if (results[0].eform_path == "") {
                res.status(200).json({ hasEform: false, url: "" })
            } else {

                res.status(200).json({ url: "http://192.168.100.5:5000/" + results[0].eform_path, hasEform: true })
            }
        });


    })
});


app.get('/api/admin/getMoreInfo', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        let tablenames = "troubling_problems, someone_to_talk, happiest_expi, downful_expi, ambition, want_to_change";
        if (err) throw err;
        let query = connection.query(`SELECT ${tablenames} FROM users WHERE id=${req.query.id}`, (err, results, fields) => {
            if (err) throw err;
            // When done with the connection, release it.
            connection.release();
            res.status(200).json(results[0]);

        });
    })
});

app.get('/api/admin/getProblems', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;



        let query = connection.query(`SELECT * FROM reserve WHERE user_id = ${req.query.id}`, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            res.status(200).json(results[0])
        });
        console.log(query.sql)

    })
});

app.put('/api/admin/allResult', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`UPDATE users SET isResPrinted = 1 WHERE users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            console.log(results)
            res.json({ "message": "success" })
        })

    })
});

app.get('/api/admin/oldTempResults', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT id,username, name FROM users WHERE summary_code = '' AND isResPrinted = 1 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);

        })
    })
});
app.get('/api/admin/oldResults', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT id,username, name, summary_code FROM users WHERE summary_code <> '' AND isResPrinted = 1 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);

        })
    })
});

app.get("/api/admin/getLetters", verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT user_id, value, letter, word FROM letters WHERE user_id = ${req.query.id}`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results)

        });
        console.log(query.sql);
    })
});

app.get('/api/admin/results', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT * FROM users WHERE summary_code = '' AND isResPrinted = 0 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);

        })
    });
});




app.get('/api/admin/old-archive', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT id,username, name FROM users WHERE isResPrinted = 1 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);

        })
    })
});
app.get('/api/admin/old-print', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT * FROM users WHERE isResPrinted = 0 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);
            // connection.release();
            // res.json(results)
        });
        console.log(query.sql)
    })
});
app.get('/api/admin/newResults', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT * FROM users WHERE summary_code <> '' AND isResPrinted = 0 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);
            // connection.release();
            // res.json(results)
        });
        console.log(query.sql)
    })
});



app.put("/api/admin/singleResult", verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`UPDATE users SET isResPrinted = 1 WHERE id = ${req.body.id}`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json({ "message": "Updated" })
        })
        console.log(query.sql)
    })
});

app.get("/api/admin/getSDS", verifyAdminToken, (req, res) => {
    let holder = [];
    function getCodes(callback) {
        pool.getConnection((err, connection) => {
            if (err) throw err;


            const query = connection.query(`SELECT code FROM user_code WHERE user_id=${req.query.id}`, (error, results, fields) => {
                if (error) throw error;
                console.log(results.length)
                results.forEach((element, index) => {
                    const query = connection.query('SELECT * from `code` WHERE `code` = ?', [element.code], (error, results, fields) => {
                        if (error) throw error;

                        holder.push({
                            name: element.code,
                            result: results
                        })
                        console.log(index)
                        console.log(query.sql)
                    })

                });





                setTimeout(() => {
                    // When done with the connection, release it.
                    connection.release();
                    callback(holder);
                }, 1000)



            });










        });
    }

    getCodes((data) => {
        res.status(200).json(data)
        console.log(data)
    })
})


app.post("/api/admin/graph", verifyAdminToken, async (req, res) => {

    let result = {
        conditionMet: { value: 0, data: Array.apply(null, Array()), label: "Criteria and Problems" },
        notCondition: { value: 0, data: Array.apply(null, Array()), label: "Only Criteria" },
        allResult: { value: 0, data: Array.apply(null, Array()), label: "All Students" },
    }

    let criteria_holder = "";
    let criteriaMet = "";
    let notCriteriaMet = "";

    //Get result 1
    //Get Criteria
    req.body.criteria.forEach((first, firstIndex) => {
        notCriteriaMet += "(";
        criteriaMet += "(";
        first.value.forEach((element, index) => {
            notCriteriaMet += "users." + first.fieldname + " = " + `'${element}'`;
            criteriaMet += "users." + first.fieldname + " = " + `'${element}'`;
            if (index != first.value.length - 1) {
                notCriteriaMet += " OR "
                criteriaMet += " OR "
            }
        });
        notCriteriaMet += ")";
        notCriteriaMet += " AND "
        criteriaMet += ")"
        criteriaMet += " AND "
        console.log("done first event")
    });

    req.body.value.forEach((element, index) => {
        console.log("second start")
        notCriteriaMet += element + " = 0";
        criteriaMet += element + " = 1";
        if (index != req.body.value.length - 1) {
            criteriaMet += " AND "
            notCriteriaMet += " AND "
        }
        console.log("second end")
    });
    console.log(criteriaMet)
    pool.getConnection((err, connection) => {
        console.log("third start")
        if (err) throw err;
        let query = connection.query(`SELECT * FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${criteriaMet}`, (error, results, fields) => {

            if (error) throw error;
            result.conditionMet.value = results.length;
            result.conditionMet.data = results;

            let query = connection.query(`SELECT * FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${notCriteriaMet}`, (error, results, fields) => {

                if (error) throw error;
                result.notCondition.value = results.length;
                result.notCondition.data = results;
                let query = connection.query(`SELECT * FROM users`, (error, results, fields) => {
                    if (error) throw error;
                    // When done with the connection, release it.
                    connection.release();
                    result.allResult.value = results.length;
                    result.allResult.data = results;

                    res.status(200).json(result)
                })

            })

        })

        console.log("third end")
    })
    //Get result 2









});

app.delete("/api/admin/users", verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`DELETE FROM users WHERE id=${req.query.id}`, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            res.status(200).json(results)
        })
        console.log(query.sql)
    })
})

app.post("/api/admin/genGraph", verifyAdminToken, (req, res) => {
    req.body.sqlTable = replaceAll(req.body.sqlTable, "\n", ",");

    console.log(req.body.sql)
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT ${req.body.sqlTable} FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${req.body.sql}`, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            res.json(results)
        })
        console.log(query.sql)
    })
});

app.post("/api/admin/indivProb", verifyAdminToken, (req, res) => {
    console.log(req.body)
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT username, name, year, course, gender FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${req.body.problem} AND ${req.body.userCriteria}`, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            res.json(results);
        });
        console.log(query.sql)
    });

});






app.post("/api/admin/login", (req, res) => {
    console.log(req.body)
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT username, password, type FROM users WHERE username = ? AND type = 'admin'`, [req.body.username], (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            if (results.length > 0) {

                if (bcrypt.compareSync(req.body.password, results[0].password)) {
                    let payload = {
                        username: results[0].username
                    }
                    jwt.sign(payload, "adminsecretshhhhhh", { expiresIn: '1d' }, (err, token) => {
                        if (err) throw err;

                        res.json(token);

                    });
                } else {
                    res.status(401).json({ message: "Wrong username or password" })
                }

            } else {
                res.status(401).json({ message: "Wrong username or password" })
            }
        })
        console.log(query.sql)
    });

});





function replaceAll(str, find, replace) {
    return str.replace(new RegExp(find, 'g'), replace);
}

function verifyAdminToken(req, res, next) {
    const bearerHeader = req.headers["authorization"];

    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")[1];

        req.token = bearer;

        jwt.verify(bearer, 'adminsecretshhhhhh', (err, authData) => {
            if (err) {
                res.status(403).json({ message: "Forbidden" })
                throw err
            } else {
                next();
            }
        });


    } else {
        //Forbidden
        res.status(403).json({ message: "Forbidden" })
    }
}

function verifyToken(req, res, next) {
    //Get auth header value
    const bearerHeader = req.headers["authorization"];

    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")[1];

        req.token = bearer;

        jwt.verify(bearer, 'shhhhhh', (err, authData) => {
            if (err) {
                res.status(403).json({ message: "Forbidden" })
                throw err
            } else {
                req.userData = authData;
                next();
            }
        });


    } else {
        //Forbidden
        res.status(403).json({ message: "Forbidden" })
    }
}


app.listen(5000, () => {
    console.log("Server started at port 5000")
});
