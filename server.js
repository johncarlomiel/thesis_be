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
        let tablenames = "name, course, age, gender, religion, place_birth, addr, cp_num, mother_name, mother_religion, mother_job, father_name, father_religion, father_job, not_livingwith_parents, study_status, transpo, allowed_night, study_helper, hobby, have_friends";
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
        let tablenames = "adjustments, courtship, education, family, financial, morals, per_physio, physio, soc_physio, soc_recreat, teach_procedure";


        let query = connection.query(`SELECT ${tablenames} FROM problems WHERE user_id = ${req.userData.id}`, (error, results, fields) => {
            if (error) throw error;
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
        father_name = ?, father_religion = ?, father_job = ?, not_livingwith_parents = ?, study_status = ?, transpo = ?, allowed_night = ?, study_helper = ?, hobby = ?, have_friends = ? WHERE id = ?`;

        data.push(req.userData.id)
        let qwe = connection.query(sql, data, (err, results, fields) => {
            if (err) {
                res.status(400).json({ err })
                throw err;
            }

            res.status(200).json({ message: "Updated" });
        });


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

    pool.getConnection((err, connection) => {
        if (err) throw err;
        let holder = req.body.data;
        let data = Array.apply(null, Array());
        holder.forEach(element => {
            data.push(element.value);
        });
        let sql = `UPDATE problems SET physio = ?, financial = ?, soc_recreat = ?, courtship = ?, soc_physio = ?, per_physio = ?, morals = ?, teach_procedure = ?, family = ?, education = ?, adjustments = ? WHERE user_id = ?`;
        data.push(req.userData.id)
        let query = connection.query(sql, data, (err, results, fields) => {
            if (err) {
                res.status(400).json({ err })
                throw err;
            }
            res.status(200).json({ message: "updated" });
        })
        console.log(query.sql)
    });


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
        if(err) throw err;
        let query = connection.query(`SELECT code FROM user_code WHERE user_id=${req.userData.id}`, (error, results, fields) => {
            if(error) throw error;
            
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



app.listen(5000, () => {
    console.log("Server started at port 5000")
});
