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

router.post("/genGraph", verifyAdminToken, (req, res) => {
    req.body.sqlTable = replaceAll(req.body.sqlTable, "\n", ",");

    // console.log(req.body.sql)
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