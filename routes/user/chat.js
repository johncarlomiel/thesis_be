


const express = require("express");
const router = express.Router();
const pool = require('../../configs/pool');
const jwt = require('jsonwebtoken');
const formidable = require('formidable');
const cors = require('cors');
const config = require('../../configs/config');


router.use(express.json());
router.use(cors());




function checkIfAdmin(type) {
    return type == "admin" ? true : false;
}



function verifyToken(req, res, next) {
    //Get auth header value
    const bearerHeader = req.headers["authorization"];
    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")[1];

        req.token = bearer;

        let secret_key = "";

        if (checkIfAdmin(req.query.user_type)) {
            secret_key = config.secret_admin;
        } else {
            secret_key = config.secret_user;
        }

        jwt.verify(bearer, secret_key, (err, authData) => {
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


module.exports = function (io) {
    var users = [];
    var clients = io.sockets.clients();
    var notif = io.of('/chat')
        .on('connection', (socket) => {
            socket.on('error', (error) => console.log(error))
            // console.log("conneted", socket.id)
            socket.on('disconnect', (reason) => {
                if (!!socket.user_id && !!users[socket.user_id]) {
                    delete users[socket.user_id];
                    let currentDate = new Date();
                    socket.broadcast.emit('new offline user', socket.user_id, currentDate);
                    pool.query(`UPDATE users SET last_online = '${currentDate}' WHERE id = ${socket.user_id}`, (err, results) => {
                        if (err) throw err;
                        console.log(socket.user_id);
                    });
                }
            });

            socket.on('login', id => {
                if (!!id) {
                    console.log(id);

                    users[id] = socket.id;
                    socket.user_id = id;
                    console.log("user id = " + users[id])
                    socket.broadcast.emit('new online user', id);
                }
            });
            socket.on('logout', id => {
                console.log('logout id : ' + id)
                if (id !== 'undefined') {
                    delete users[id];
                    let currentDate = new Date();
                    socket.broadcast.emit('new offline user', id, currentDate);
                    pool.query(`UPDATE users SET last_online = '${currentDate}' WHERE id = ${id}`, (err, results) => {
                        if (err) throw err;

                    });

                }
            });
            socket.on('join', (data) => {
                console.log(`User ${data.user} Join the room: ${data.convo_name}`);

                socket.join(data.convo_name);
                socket.broadcast.to(data.convo_name).emit('user online', data.user);
            });
            socket.on('leave', (data) => {
                socket.leave(data.convo_name)
                console.log(`user ${data.user} left convo_name ${data.convo_name}`);
                socket.broadcast.to(data.convo_name).emit('user offline', data.user);
            })
            socket.on('end', (id) => {
                console.log('someone ending')
                console.log(id);
                if (!!id) {
                    delete users[id];
                    let currentDate = new Date();
                    socket.broadcast.emit('new offline user', id, currentDate);
                    pool.query(`UPDATE users SET last_online = '${currentDate}' WHERE id = ${id}`, (err, results) => {
                        if (err) throw err;
                        console.log(results)
                        console.log('nagana')
                    });
                }
            });

            socket.on('send msg', (data) => {
                const bearer = data.token.split(" ")[1];
                let secret_key = "";
                if (data.isAdmin)
                    secret_key = config.secret_admin;
                else
                    secret_key = config.secret_user;
                jwt.verify(bearer, secret_key, (err, authData) => {
                    if (err) throw err;
                    else {
                        pool.query("INSERT INTO messages SET ?",
                            { message: data.msg, user_id: authData.id, convo_name: data.convo_name },
                            (err, results) => {
                                if (err) throw err;
                                let convo_name = data.convo_name;
                                let limit = data.limit;

                                let sql = `SELECT convo_name, id, message,dp_path,
                             message_id, messages.timestamp, name
                             FROM messages INNER JOIN users ON messages.user_id = users.id
                              WHERE convo_name = ? ORDER BY messages.timestamp DESC LIMIT ?`;

                                pool.query(sql, [convo_name, data.limit], (err, results) => {
                                    if (err) throw err;
                                    notif.to(convo_name).emit('new msg', results);
                                    notif.to(convo_name).emit('new single message for contact', results[0]);
                                })



                            });
                    }
                });
            });
        });

    function checkOnline(contacts) {
        newContacts = [];
        contacts.forEach(element => {
            let isOnline = false;
            if (!!users[element.contact_user_id]) {
                isOnline = true;
            }
            newContacts.push({
                contact_user_id: element.contact_user_id,
                convo_name: element.convo_name,
                name: element.name,
                dp_path: element.dp_path,
                isOnline,
                isSelected: false,
                recent_msg: element.recent_msg,
                last_online: element.last_online
            });
        });
        return newContacts;
    }


    //Get Contacts
    router.get("/contacts", verifyToken, (req, res) => {
        let sql = `SELECT contacts.*,users.*,
        SUBSTRING((SELECT messages.message FROM messages 
            WHERE contacts.convo_name = messages.convo_name 
            ORDER BY messages.message_id DESC LIMIT 1),1,20) AS recent_msg
         FROM contacts
        INNER JOIN users ON contacts.contact_user_id = users.id
          WHERE contacts.user_id = ?`;


        let query = pool.query(sql, [req.userData.id], (error, results) => {
            if (error) throw error;
            res.json(checkOnline(results));
        });
    });

    router.get("/messages", verifyToken, (req, res) => {
        let sql = `SELECT convo_name, dp_path, message, id, message_id, messages.timestamp, name
         FROM messages INNER JOIN users ON messages.user_id = users.id
          WHERE convo_name = ?  ORDER BY messages.message_id DESC LIMIT `;
        let qwe = pool.query(sql + req.query.limit, [req.query.convo_name], (err, results) => {
            if (err) throw err;
            console.log(err);
            res.json(results);
        })
    });

    router.post("/messages", verifyToken, (req, res) => {
        pool.query("INSERT INTO messages SET ?", { message: req.body.msg, user_id: req.userData.id, convo_name: req.body.convo_name }, (err, results) => {
            if (err) throw err;
            let convo_name = req.body.convo_name;
            let sql = `SELECT convo_name, message,dp_path, message_id, messages.timestamp,
             name FROM messages INNER JOIN users ON messages.user_id = users.id
              WHERE convo_name = ? ORDER BY messages.timestamp DESC LIMIT 10`;

            pool.query(sql, [convo_name], (err, results) => {
                if (err) throw err;

                notif.to(convo_name).emit('new msg', results.reverse());
                console.log(convo_name)
                res.status(200)
            });
        })
    });
    //Admin routes starts here....
    return router;
}