const express = require("express");
const router = express.Router();
const pool = require('../../configs/pool');
const jwt = require('jsonwebtoken');
const cors = require('cors');
const config = require('../../configs/config');


router.use(express.json());
router.use(cors());

router.get('/checkSdsStatus', verifyToken, (req, res) => {
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
});

router.post("/submitResult", verifyToken, (req, res) => {
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




router.post("/submitSummaryCode", verifyToken, (req, res) => {
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


router.post("/submitLetters", verifyToken, (req, res) => {
    pool.getConnection((err, connection) => {
        // Transform every object into an array and push it into another
        // array to meet mysql bulk inserting
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

router.get('/getMyCode', verifyToken, (req, res) => {
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










//Middlewares
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