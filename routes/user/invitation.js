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

router.get('/invitation', verifyToken, (req, res) => {
   pool.query('SELECT DISTINCT invitation.event_id,invitation.user_id, events.*, users.* FROM invitation INNER JOIN events ON invitation.event_id = events.event_id INNER JOIN users ON invitation.user_id = users.id WHERE user_id = ? AND status = ?', [req.userData.id, req.query.status], (err, results) => {
      if (err) throw err;
      results.forEach((element, index) => {
         results[index]["poster_url"] = config.ip + element.poster_url;
      });
      res.json(results);
      console.log(results);

   });
});

router.patch('/invitation', verifyToken, (req, res) => {
   console.log("got something")
   pool.getConnection((err, connection) => {
      if (err) throw err;
      let sql = connection.query('UPDATE invitation SET status = ?, isSeen = true WHERE user_id = ? AND event_id = ?', [req.body.status_val, req.userData.id, req.body.event_id], (err, results) => {
         if (err) throw err;
         connection.release();
         console.log(results)


         res.json({ message: "Response Submitted" });
      });
      console.log(sql.sql)
   });

});

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
      res.status(403).json({ message: "Forbidden Hey" })
   }
}


module.exports = router;
