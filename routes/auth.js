const express = require("express");
const router = express.Router();
const pool = require('../configs/pool');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const cors = require('cors');
const uniqid = require('uniqid');


router.use(express.json());
router.use(cors());

//User Login
router.post("/users/login", (req, res) => {
    console.log("meron")
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
                            name: results[0].name,
                            dp_path: results[0].dp_path
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


//User Registration
router.post("/users/register", (req, res) => {
    pool.getConnection((err, connection) => {
        console.log(req.body)
        connection.query(`SELECT * FROM users WHERE username="${req.body.username}"`, (error, results, fields) => {
            if (results.length == 0) {
                //Insert it
                //Hash the password
                let hash = bcrypt.hashSync(req.body.password, 10);

                connection.query("INSERT INTO users SET ?", {
                    username: req.body.username, password: hash, name: req.body.name, type: "user", gender: req.body.gender, dp_path: req.body.dp_path
                },
                    (error, results, fields) => {
                        if (error) {
                            res.json({ message: "Mysql Error" });
                            connection.release();
                            throw error;
                        }
                        console.log(results)
                        let user_result_id = results.insertId;
                        //Insert default value in problems
                        connection.query("INSERT INTO reserve SET ?", {
                            user_id: user_result_id
                        }, (error, results, fields) => {
                            if (error) throw error;

                            connection.query("INSERT INTO profile_progress SET ?", { user_id: user_result_id }, (error, results, fields) => {
                                // When done with the connection, release it.
                                connection.release();
                                res.status(200).json({ message: "Register success", status: 200 })
                            });
                        });

                        pool.query('SELECT * FROM users WHERE type = "admin"', (error, results, fields) => {
                            if (error) {
                                throw error;
                            }
                            results.forEach(element => {
                                let convo_name = uniqid();
                                console.log(uniqid)
                                let data = [
                                    [user_result_id, element.id, convo_name],
                                    [element.id, user_result_id, convo_name]
                                ];
                                pool.query('INSERT INTO contacts (user_id, contact_user_id, convo_name) VALUES ?', [data], (err, results) => {
                                    if (err) throw err;
                                });

                                pool.query("INSERT INTO tbl_convo SET ?", { convo_name: convo_name, convo_pass: "" }, (err, resultss) => {
                                    if (err) throw err;
                                    let insertedId = resultss.insertId;
                                    let insertData = [
                                        [insertedId, user_result_id],
                                        [insertedId, element.id]
                                    ];
                                    pool.query('INSERT INTO convo_ptcpant (convo_id, user_id) VALUES ?', [insertData], (err, results) => {
                                        if (err) throw err;

                                    });
                                });
                            });
                        });




                    });




            } else {
                // When done with the connection, release it.
                connection.release();
                res.status(403).json({ message: "Username already taken" })
            }
        });
    });
});


//Admin Login
router.post("/admin/login", (req, res) => {
    console.log(req.body)
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT username, password, type, id, name, dp_path FROM users WHERE username = ? AND type = 'admin'`, [req.body.username], (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            if (results.length > 0) {

                if (bcrypt.compareSync(req.body.password, results[0].password)) {
                    let payload = {
                        id: results[0].id,
                        username: results[0].username,
                        name: results[0].name,
                        dp_path: results[0].dp_path
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

router.get("/users/checkSession", verifyToken, (req, res) => {
    res.status(200).json(req.userData);
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

router.get('/payload', (req, res) => {
    const bearerHeader = req.headers["authorization"];
    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")[1];

        req.token = bearer;
        let secret = "";
        if (req.query.user_type == "admin") {
            secret = "adminsecretshhhhhh";
        } else {
            secret = "shhhhhh"
        }

        jwt.verify(bearer, secret, (err, authData) => {
            if (err) {
                res.status(403).json({ message: "Forbidden" })
                throw err
            } else {

                res.json(authData);
            }
        });


    } else {
        //Forbidden
        res.status(403).json({ message: "Forbidden" })
    }
});



module.exports = router;