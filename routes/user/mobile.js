const express = require("express");
const router = express.Router();
const pool = require('../../configs/pool');
const jwt = require('jsonwebtoken');
const formidable = require('formidable');
const cors = require('cors');
const config = require('../../configs/config')
const path = require('path');
const fs = require('fs');



router.use(express.json());
router.use(cors());
//Mobile App Routes
const server_ip = config.ip;

router.get('/events', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT * FROM events`, (err, results) => {
            if (err) {
                res.status(400).json({ message: "Mysql Error" });
                throw err;
            }
            results.forEach((element, index) => {
                results[index].poster_url = server_ip + element.poster_url;
            });
            connection.release();
            res.json(results)
        });
    });
});
router.post(`/submitEform`, [verifyToken, uploadPhoto, deleteCurrentPhoto], (req, res) => {
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
            updateProgress("eform");
            res.status(200).json({ message: "Eform Updated" });

        });
        console.log(query.sql)

    })
});

router.get("/getEform", verifyToken, (req, res) => {
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

                res.status(200).json({ url: server_ip + results[0].eform_path, hasEform: true });
                console.log(server_ip + results[0].eform_path)
            }
        });
    })
});

router.get('/getInfo', verifyToken, (req, res) => {
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


router.get('/getMoreInfo', verifyToken, (req, res) => {
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

router.get('/getProblems', verifyToken, (req, res) => {
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

router.put('/updateInfo', verifyToken, (req, res) => {
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
            updateProgress("basic_info");
            res.status(200).json({ message: "Updated" });
        });
        console.log(qwe.sql)


    })
});

router.put('/updateMoreInfo', verifyToken, (req, res) => {
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
            updateProgress("more_info");
            res.status(200).json({ message: "Sucess" })
        });
        console.log(query.sql)

    });

});

router.put('/updateProblems', verifyToken, (req, res) => {

    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`UPDATE reserve SET ${req.body.fieldnameArr.toString()} WHERE user_id = ${req.userData.id}`, req.body.valuesArr, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.query(`UPDATE users SET isProblemsUpdated = true WHERE id = ${req.userData.id}`, (err, results) => {
                if (err) throw err;
                connection.release();
                updateProgress("problems");
                res.status(200).json({ status: 200, message: "Success!" });
            })


        });
    });
});

router.get('/get-progress', verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        let query = connection.query(`SELECT basic_info, more_info, problems, eform FROM profile_progress WHERE user_id =  ?`, [req.userData.id], (error, results, fields) => {
            if (error) {
                connection.release();
                res.status(400).json({ message: "Mysql Err" });
                throw error;
            }
            res.json(results);
            connection.release();
        });
        console.log(query.sql);

    });
});




//Middlewares

function updateProgress(field) {
    pool.getConnection((error, connection) => {
        let query = connection.query(`UPDATE profile_progress SET ${field} = 1`, (err, results, fields) => {
            if (err) {
                throw err;
            }
            connection.release();
        });
        console.log(query.sql);
    });
}

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
                fs.access(results[0].eform_path, (err) => {
                    if (err) {
                        console.log(err)
                    } else {
                        fs.unlink(results[0].eform_path, (err) => {
                            if (err) throw err;
                            console.log(results[0].eform_path + " Deleted");
                        });
                    }

                })

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
        profilePath = path.join(__dirname, '..', '..', 'public/uploads/') + Date.now() + newImageName;
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
function verifyToken(req, res, next) {
    //Get auth header value
    const bearerHeader = req.headers["authorization"];
    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")[1];

        req.token = bearer;

        jwt.verify(bearer, config.secret_user, (err, authData) => {
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


module.exports = router;