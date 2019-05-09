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
   router.get('/qwe', (req, res) => {

   });

   var comments = io.of('/comments')
      .on('connection', (socket) => {


         socket.on('edit comment', (comment, event_id, newComment) => {
            pool.getConnection((err, connection) => {
               if (err) throw err;
               connection.beginTransaction((err) => {
                  if (err) throw err;
                  connection.query("UPDATE event_comments SET comment = ? WHERE comment_id = ?", [newComment, comment.comment_id], (err, results) => {
                     if (err) {
                        return connection.rollback(function () {
                           connection.release();
                           throw err;
                        });
                     }
                  });

                  connection.commit((err) => {
                     if (err) {
                        return connection.rollback(function () {
                           connection.release();
                           throw err;
                        });
                     }
                     console.log(newComment)
                     comment["comment"] = newComment;
                     comments.emit('new comment from edit', comment, event_id);

                     connection.release();
                  });



               });



            });
         });


         socket.on('delete comment', (comment_id, event_id) => {
            pool.getConnection((err, connection) => {
               if (err) throw err;
               connection.beginTransaction((err) => {
                  if (err) throw err;
                  connection.query("UPDATE events SET comments_counter = comments_counter - 1 WHERE event_id = ?", [event_id], (err, results) => {
                     if (err) {
                        return connection.rollback(function () {
                           connection.release();
                           throw err;
                        });
                     }
                  });

                  connection.query("DELETE FROM event_comments WHERE comment_id = ?", [comment_id], (err, results) => {
                     if (err) {
                        return connection.rollback(function () {
                           connection.release();
                           throw err;
                        });
                     }
                  });

                  connection.query("SELECT * FROM events WHERE event_id = ?;SELECT event_comments.*, users.dp_path,users.name FROM event_comments INNER JOIN users ON event_comments.user_id = users.id WHERE event_id = ?", [event_id, event_id], (err, event_with_comment) => {
                     if (err) {
                        return connection.rollback(function () {
                           connection.release();
                           throw err;
                        });
                     }
                     connection.commit((err) => {
                        if (err) {
                           return connection.rollback(function () {
                              connection.release();
                              throw err;
                           });
                        }
                        console.log(event_with_comment[1])

                        comments.emit('new comment from deletion', event_with_comment[0][0], event_with_comment[1], comment_id);
                        connection.release();
                     });

                  });


               });



            })
         });

         socket.on('send comment', (event_id, user_id, comment) => {
            var comment = {
               event_id,
               user_id,
               comment
            }

            pool.getConnection((err, connection) => {
               if (err) throw err;

               connection.beginTransaction((err) => {
                  if (err) throw err;

                  connection.query('UPDATE events SET comments_counter = comments_counter + 1 WHERE event_id = ?', [event_id], (err, results) => {
                     if (err) {
                        return connection.rollback(function () {
                           connection.release();
                           throw error;
                        });
                     }
                  });

                  console.log(comment)
                  let query = connection.query('INSERT INTO event_comments SET ?', comment, (err, results) => {
                     if (err) {
                        return connection.rollback(function () {
                           connection.release();
                           throw error;
                        });
                     }

                     let insertedId = results.insertId;

                     console.log(results)
                     connection.query('SELECT * FROM events WHERE event_id = ?; SELECT event_comments.comment,users.id,event_comments.user_id,event_comments.comment_id, event_comments.timestamp,users.name,users.dp_path FROM event_comments INNER JOIN users ON event_comments.user_id = users.id WHERE comment_id = ?', [event_id, insertedId], (err, event_with_comment) => {
                        if (err) {
                           return connection.rollback(function () {
                              connection.release();
                              throw error;
                           });
                        }

                        connection.commit((err) => {
                           if (err) {
                              return connection.rollback(function () {
                                 connection.release();
                                 throw err;
                              });
                           }

                           // results3[0].poster_url = config.ip + results3[0].poster_url;
                           // likes.emit('new like', (results3[0]));
                           comments.emit('new comment', event_with_comment[0][0], event_with_comment[1][0]);
                           connection.release();
                        });
                     });
                  });






               });

            });


         });


      });

   return router;
}