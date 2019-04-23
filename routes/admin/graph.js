const express = require("express");
const router = express.Router();
const pool = require('../../configs/pool');
const jwt = require('jsonwebtoken');
const cors = require('cors');
const config = require('../../configs/config')

router.use(express.json());
router.use(cors());

router.post("/graph", verifyAdminToken, async (req, res) => {
    let result = {
        conditionMet: { value: 0, data: Array.apply(null, Array()), label: "Criteria and Problems" },
        notCondition: { value: 0, data: Array.apply(null, Array()), label: "Only Criteria" },
        allResult: { value: 0, data: Array.apply(null, Array()), label: "All Students" },
    }
    pool.getConnection((err, connection) => {
        console.log("third start")
        if (err) throw err;
        let query = connection.query(`SELECT * FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${req.body.criteriaMet} AND users.isProblemsUpdated = true AND users.type = 'user'`, (error, results, fields) => {

            if (error) throw error;
            result.conditionMet.value = results.length;
            result.conditionMet.data = results;

            let query = connection.query(`SELECT * FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${req.body.notCriteriaMet}  AND users.isProblemsUpdated = true AND users.type = 'user'`, (error, results, fields) => {

                if (error) throw error;
                result.notCondition.value = results.length;
                result.notCondition.data = results;
                let query = connection.query(`SELECT * FROM users WHERE users.type = 'user'`, (error, results, fields) => {
                    if (error) throw error;
                    // When done with the connection, release it.
                    connection.release();
                    result.allResult.value = results.length;
                    result.allResult.data = results;

                    res.status(200).json(result)
                })

            })

        })
    })
    //Get result 2

});

router.post("/genGraph", verifyAdminToken, (req, res) => {
    req.body.sqlTable = replaceAll(req.body.sqlTable, "\n", ",");

    pool.getConnection((err, connection) => {
        if (err) throw err;
        let query = connection.query(`SELECT ${req.body.sqlTable} FROM users INNER JOIN reserve ON users.id = reserve.user_id WHERE ${req.body.sql} AND users.isProblemsUpdated = true AND users.type = 'user'`, (error, results, fields) => {
            if (error) throw error;
            // When done with the connection, release it.
            connection.release();
            res.json(results)
        })
    })
});

// Middlewares
function replaceAll(str, find, replace) {
    return str.replace(new RegExp(find, 'g'), replace);
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