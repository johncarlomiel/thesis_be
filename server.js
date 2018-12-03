const express = require("express");
const jwt = require('jsonwebtoken');
const mysql = require("mysql")
const cors = require('cors');

var pool = mysql.createPool({
    connectionLimit: 10000,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'survey'
});

const app = express();
app.use(express.json());
app.use(cors())


app.post("/api/register", (req, res) => {

    pool.getConnection((err, connection) => {
        connection.query(`SELECT * FROM users WHERE username="${req.body.username}"`, (error, results, fields) => {
            if (results.length == 0) {
                //Insert it
                connection.query("INSERT INTO users SET ?", {
                    username: req.body.username, password: req.body.password, name: req.body.name
                },
                    (error, results, fields) => {
                        if (error) {
                            throw error;
                        }
                        console.log(results)
                        //Insert default value in problems
                        connection.query("INSERT INTO problems SET ?", {
                            user_id: results.insertId
                        }, (error, results, fields) => {

                        });



                        res.status(200).json({ message: "Register success", status: 200 })
                    });




            } else {
                res.status(403).json({ message: "Username already taken" })

            }
        });







    });

});

app.post("/api/login", (req, res) => {

    pool.getConnection((err, connection) => {
        if (err) throw err;

        connection.query("SELECT * FROM `users` WHERE `username` = ? AND `password` = ?",
            [req.body.username, req.body.password],
            (error, results, fields) => {
                if (error) throw error;
                if (results.length > 0) {
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
                    res.status(400).json({ message: "Invalid username or password" })
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

        let query = connection.query('INSERT INTO user_code (user_id, code) VALUES ?', [codes], (error, results, fields) => {
            if (error) throw error;

            res.status(200).json({ hetto: "wer" })



        });
        console.log(query.sql)
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
            res.status(200).json(results[0]);

        });
    })
});

app.get('/api/getProblems', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;



        let query = connection.query(`SELECT * FROM user_problems INNER JOIN problems ON user_problems.problem_id = problems.id WHERE user_id = ${req.userData.id} AND answer=1`, (error, results, fields) => {
            if (error) throw error;
            res.status(200).json(results)
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
            res.status(200).json({ message: "Sucess" })
        });
        console.log(query.sql)

    });

});


app.put('/api/updateProblems', verifyToken, (req, res) => {

    let holder = Array.apply(null, Array());
    req.body.data.forEach(element => {
        element.value.forEach(element => {
            holder.push(element)
        });
    });

    pool.getConnection((err, connection) => {

        holder.forEach(element => {
            let query = connection.query(`SELECT * FROM user_problems WHERE user_id=${req.userData.id} AND problem_id=${element.id}`, (error, results, fields) => {
                if (error) throw error;
                if (results.length == 0) {
                    let tanga = connection.query("INSERT INTO user_problems SET ?", { user_id: req.userData.id, problem_id: element.id, answer: element.value }, (error, results, fields) => {
                        if (error) throw error;
                    });


                } else {
                    connection.query("UPDATE user_problems SET answer = ? WHERE user_id = ? AND problem_id = ?", [element.value, req.userData.id, element.id], (error, results, fields) => {
                        if (error) throw error;

                    });
                }

            });


        });


        res.status(200).json({ status: 200, message: "Success!" })
    });

});

app.get("/api/getQuestions", (req, res) => {
    pool.getConnection((err, connection) => {

        let query = connection.query("SELECT * FROM problems", (error, results, fields) => {
            if (error) throw error;
            res.status(200).json(results);

        })

    })
});





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

app.get('/api/completeTest', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT code FROM user_code WHERE user_id=${req.userData.id}`, (error, results, fields) => {
            if (error) throw error;

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



                setTimeout(() => callback(holder), 1000)



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
app.get('/api/admin/users', (req, res) => {
    pool.getConnection((err, connection) => {
        connection.query("SELECT id, username, name FROM users", (error, results, fields) => {
            res.status(200).json(results)
        });
    })
})

//Serach
app.get("/api/admin/searchUsers", (req, res) => {
    pool.getConnection((err, connection) => {
        let query = connection.query(`SELECT * FROM users WHERE name LIKE '%${req.query.keyword}%'`, (error, results, fields) => {
            if (error) throw error;
            res.status(200).json(results)
        })
        console.log(query.sql)
    })
})

app.get('/api/admin/getInfo', (req, res) => {
    pool.getConnection((err, connection) => {

        let tablenames = "name, course, age, gender, religion, place_birth, addr, cp_num, mother_name, mother_religion, mother_job, father_name, father_religion, father_job, not_livingwith_parents, study_status, transpo, allowed_night, study_helper, hobby, have_friends";
        if (err) throw err;
        let query = connection.query(`SELECT ${tablenames} FROM users WHERE id=${req.query.id}`, (err, results, fields) => {
            if (err) throw err;
            res.status(200).json(results[0]);

        });

    })
});

app.get('/api/admin/getMoreInfo', (req, res) => {
    pool.getConnection((err, connection) => {
        let tablenames = "troubling_problems, someone_to_talk, happiest_expi, downful_expi, ambition, want_to_change";
        if (err) throw err;
        let query = connection.query(`SELECT ${tablenames} FROM users WHERE id=${req.query.id}`, (err, results, fields) => {
            if (err) throw err;
            res.status(200).json(results[0]);

        });
    })
});

app.get('/api/admin/getProblems', (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;



        let query = connection.query(`SELECT * FROM user_problems INNER JOIN problems ON user_problems.problem_id = problems.id WHERE user_id = ${req.query.id} AND answer=1`, (error, results, fields) => {
            if (error) throw error;
            res.status(200).json(results)
        });
        console.log(query.sql)

    })
});


app.post("/api/admin/graph", (req, res) => {
    console.log(req.body)
    let result = {
        conditionMet: "",
        notCondition: "",
        allResult: ""
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

    });

    req.body.value.forEach((element, index) => {
        notCriteriaMet += element + " = 0";
        criteriaMet += element + " = 1";
        if (index != req.body.value.length - 1) {
            criteriaMet += " AND "
            notCriteriaMet += " AND "
        }

    });

    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT * FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${criteriaMet}`, (error, results, fields) => {

            if (error) throw error;

        })


    })
    //Get result 2

    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT * FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${notCriteriaMet}`, (error, results, fields) => {

            if (error) throw error;
            console.log(results)

        })
        console.log(query.sql)

    })






});

app.delete("/api/admin/users", (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`DELETE FROM users WHERE id=${req.query.id}`, (error, results, fields) => {
            if (error) throw error;
            res.status(200).json(results)
        })
        console.log(query.sql)
    })
})


app.listen(5000, () => {
    console.log("Server started at port 5000")
});
