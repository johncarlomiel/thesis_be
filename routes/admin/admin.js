const express = require("express");
const router = express.Router();
const pool = require('../../configs/pool');
const jwt = require('jsonwebtoken');
const cors = require('cors');
const config = require('../../configs/config');

var path = require('path');
var formidable = require('formidable')
router.use(express.json());
router.use(cors());
const server_url = config.ip;

function uploadUpdatePoster(req, res, next) {

    let form = new formidable.IncomingForm();
    var posterPath;
    var value;
    form.on('error', (err) => {
        console.log(err)
    });
    form.parse(req, (err, fields, files) => {
        if (err) throw err;
        req.body = fields;
        value = req.body.value;
        console.log(req.body);
    });

    form.on('fileBegin', function (name, file) {
        let dir_path = path.dirname(require.main.filename)
        let newImageName = file.name.split('.')[0] + '.' + file.name.split('.').pop();
        posterPath = dir_path + '/public/posters/' + Date.now() + newImageName;
        file.path = posterPath;
        posterPath = 'public/posters/' + Date.now() + newImageName;

    });
    form.on('file', function (name, file) {
        req.body.value = posterPath;
        console.log('Uploaded ' + file.name);
    });

    form.on('end', () => {
        if (req.query.field_name != "poster_url") {
            req.body.value = value;
        } else {
            req.body.value = posterPath;
        }
        next();
    });
}

router.put('/events', verifyAdminToken, uploadUpdatePoster, (req, res) => {
    let field_name = req.query.field_name;
    console.log(req.body)


    let query = pool.query(`UPDATE events SET ${field_name} = '${req.body.value}' WHERE event_id = ${req.query.id}`, (error, results) => {
        if (error) {
            res.status(400).json({ message: "Mysql Error" });
            console.log(error)
            throw error;
        }
        res.status(200).json({ message: "QWe" })
    });
    console.log(query.sql)
});
router.delete('/events', verifyAdminToken, (req, res) => {
    let query = pool.query('DELETE FROM events WHERE event_id = ?', [req.query.id], (err, results) => {
        if (err) {
            res.status(400).json({ message: "Mysql Error" });
            throw err;
        }
        res.json({ message: "Deleted" });
    })
});
router.get('/events', verifyAdminToken, (req, res) => {
    pool.query('SELECT * FROM events', (error, results) => {
        if (error) {
            res.status(400).json({ message: "Mysql Error" });
            throw error;
        }
        results.forEach((element, index) => {
            results[index].poster_url = server_url + element.poster_url;
        });
        res.json(results);
    })
});

router.post('/events', verifyAdminToken, uploadPoster, (req, res) => {
    console.log(req.body)
    pool.query('INSERT INTO events SET ?', req.body, (err, results) => {
        if (err) {
            res.status(400).json({ message: "Mysql Error" });
            throw err;
        }
        console.log(results);
        res.status(200).json({ message: "Inserted" });
    });
});

router.get('/users', verifyAdminToken, (req, res) => {
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

router.put("/account", verifyAdminToken, (req, res) => {
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


router.get('/resultSearch', verifyAdminToken, (req, res) => {
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


router.get("/searchUsers", verifyAdminToken, (req, res) => {
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
});

router.get('/getInfo', verifyAdminToken, (req, res) => {
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

router.get('/getEform', verifyAdminToken, (req, res) => {
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

                res.status(200).json({ url: server_url + results[0].eform_path, hasEform: true })
            }
        });


    })
});


router.get('/getMoreInfo', verifyAdminToken, (req, res) => {
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


router.get('/getProblems', verifyAdminToken, (req, res) => {
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

router.put('/allResult', verifyAdminToken, (req, res) => {
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


router.get('/oldTempResults', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT id,username, name FROM users WHERE summary_code = '' AND isResPrinted = 1 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);

        })
    })
});


router.get('/oldResults', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT id,username, name, summary_code,timestamp FROM users WHERE summary_code <> '' AND isResPrinted = 1 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);

        })
    })
});

router.get("/getLetters", verifyAdminToken, (req, res) => {
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


router.get('/results', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT * FROM users WHERE summary_code = '' AND isResPrinted = 0 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);

        })
    });
});


router.get('/old-archive', verifyAdminToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;

        let query = connection.query(`SELECT id,username, name FROM users WHERE isResPrinted = 1 AND users.id IN (SELECT user_id FROM user_code)`, (error, results, fields) => {
            if (error) throw error;
            connection.release();
            res.json(results);

        })
    })
});


router.get('/old-print', verifyAdminToken, (req, res) => {
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


router.get('/newResults', verifyAdminToken, (req, res) => {
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


router.put("/singleResult", verifyAdminToken, (req, res) => {
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


router.get("/getSDS", verifyAdminToken, (req, res) => {
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
});


router.delete("/users", verifyAdminToken, (req, res) => {
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
});



router.post("/indivProb", verifyAdminToken, (req, res) => {
    // console.log(req.body)
    // console.log(req.body.problem)
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


// Middlewares
function uploadPoster(req, res, next) {
    var form = new formidable.IncomingForm();
    var posterPath;
    form.on('error', (err) => {
        console.log(err)
    });
    form.parse(req, (err, fields, files) => {
        if (err) throw err;
        req.body = fields;
    });

    form.on('fileBegin', function (name, file) {
        let dir_path = path.dirname(require.main.filename)
        let newImageName = file.name.split('.')[0] + '.' + file.name.split('.').pop();
        posterPath = dir_path + '/public/posters/' + Date.now() + newImageName;
        file.path = posterPath;
        posterPath = 'public/posters/' + Date.now() + newImageName;

    });

    form.on('file', function (name, file) {
        req.body.poster_url = posterPath;
        console.log('Uploaded ' + file.name);
    });

    form.on('end', () => {
        req.body.poster_url = posterPath;
        next();
    });
}
function verifyAdminToken(req, res, next) {
    const bearerHeader = req.headers["authorization"];

    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")[1];

        req.token = bearer;

        jwt.verify(bearer, config.secret_admin, (err, authData) => {
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




module.exports = router;
