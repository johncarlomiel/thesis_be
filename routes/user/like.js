const express = require("express");
const router = express.Router();
const pool = require('../../configs/pool');
const jwt = require('jsonwebtoken');
const formidable = require('formidable');
const cors = require('cors');
const config = require('../../configs/config');
var global = require('../../globals/global');

router.use(express.json());
router.use(cors());


module.exports = (io) => {
   router.get('/like', (req, res) => {
      global.users[req.query.id] = "HEYY IM WORKING";
      res.json(global.users)
   });

   var likes = io.of('/likes')
      .on('connection', (socket) => {

         socket.on('like', (event_id, user_id, status) => {

            pool.getConnection((err, connection) => {
               if (err) throw err;
               let sqlUpdate = "";
               let insertOrDeleteQuery = "";
               if (status == "like") {
                  sqlUpdate = "UPDATE events SET likes_counter = likes_counter + 1 WHERE event_id = ?";
                  insertOrDeleteQuery = "INSERT INTO event_likes SET event_id = ?, user_id = ?";
               } else {
                  sqlUpdate = "UPDATE events SET likes_counter = likes_counter - 1 WHERE event_id = ?";
                  insertOrDeleteQuery = "DELETE FROM event_likes WHERE ?";
               }

               connection.beginTransaction((err) => {
                  if (err) throw err;
                  connection.query(sqlUpdate, [event_id], (err, results) => {
                     if (err) {
                        return connection.rollback(() => {
                           connection.release();
                           throw err;
                        });
                     };
                  });

                  connection.query(insertOrDeleteQuery, [event_id, user_id], (err, results) => {
                     if (err) {
                        return connection.rollback(() => {
                           connection.release();
                           throw err;
                        });
                     };

                     connection.query('SELECT events.*, event_likes.user_id FROM events LEFT JOIN event_likes ON events.event_id = event_likes.event_id WHERE events.event_id = ?', [event_id], (err, results3) => {
                        if (err) {
                           return connection.rollback(() => {
                              connection.release();
                              throw err;
                           });
                        };


                        connection.commit((err) => {
                           if (err) {
                              return connection.rollback(function () {
                                 connection.release();
                                 throw err;
                              });
                           }
                           results3[0].poster_url = config.ip + results3[0].poster_url;
                           likes.emit('new like', (results3[0]));
                           connection.release();
                           console.log('success!');
                        });
                     });

                  });



               });
            });

         });


      });

   return router;
}