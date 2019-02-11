


const express = require("express");
const router = express.Router();
const pool = require('../../configs/pool');
const jwt = require('jsonwebtoken');
const formidable = require('formidable');
const cors = require('cors');

router.use(express.json());
router.use(cors());


function verifyAdminToken(req, res, next) {
    const bearerHeader = req.headers["authorization"];

    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")[1];

        req.token = bearer;

        jwt.verify(bearer, 'adminsecretshhhhhh', (err, authData) => {
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

function checkIfAdmin(type) {
    return type == "admin" ? true : false;
}

function verifyToken(req, res, next) {
    //Get auth header value
    const bearerHeader = req.headers["authorization"];
    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")[1];

        req.token = bearer;

        console.log(req.query)
        let secret_key = "";

        if (checkIfAdmin(req.query.user_type)) {
            secret_key = "adminsecretshhhhhh";
        } else {
            secret_key = "shhhhhh";
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

    var notif = io.of('/chat')
        .on('connection', (socket) => {
            socket.on('error', (error) => console.log(error))


            console.log("conneted", socket.id)

            socket.emit('users', users);
            // socket.emit('requestId', null);
            socket.on('login', id => {
                users[id] = socket.id;
                socket.user_id = id;
                console.log(socket.user_id)
                console.log("user id = " + users[id])
                socket.broadcast.emit('users', users);
            });

            socket.on('logout', id => {
                console.log(id)
                if (id !== 'undefined') {
                    delete users[id];
                    socket.broadcast.emit('users', users);
                }
            });



            socket.on('join', (data) => {
                socket.join(data.convo_name);
                console.log("eqwewq")
                console.log(`user ${data.user} join convo_name ${data.convo_name}`);
                socket.broadcast.to(data.convo_name).emit('user online', data.user);

            });

            // socket.on('send msg', () => {

            // });

            socket.on('leave', (data) => {
                socket.leave(data.convo_name)
                console.log(`user ${data.user} left convo_name ${data.convo_name}`);
                socket.broadcast.to(data.convo_name).emit('user offline', data.user);
            })
            // socket.on('setId', id => {
            //     users[id] = socket.id;
            //     socket.user_id = id;
            //     console.log(`user[${id}] is set to ${socket.id}`);
            // });

            // socket.on('notification', (message, fn) => {
            //     fn(message);
            // });
            socket.on('end', function () {
                socket.disconnect(0);
            });

        });


    //Get Contacts
    router.get("/contacts", verifyToken, (req, res) => {
        console.log(req.userData)
        pool.query("SELECT contact_user_id, convo_name, users.name, users.dp_path FROM contacts INNER JOIN users ON contacts.contact_user_id = users.id WHERE user_id = ?", [req.userData.id], (error, results) => {
            if (error) throw error;

            res.json(results);
        });
    });

    router.get("/messages", verifyToken, (req, res) => {
        console.log(req.query)
        let qwe = pool.query("SELECT convo_name, dp_path, message, id, message_id, timestamp, name FROM messages  INNER JOIN users ON messages.user_id = users.id WHERE convo_name = ?  ORDER BY timestamp DESC LIMIT " + req.query.limit, [req.query.convo_name], (err, results) => {
            if (err) throw err;
            console.log(err);
            res.json(results.reverse());
        })
        console.log(qwe.sql)
    });

    router.post("/messages", verifyToken, (req, res) => {
        pool.query("INSERT INTO messages SET ?", { message: req.body.msg, user_id: req.userData.id, convo_name: req.body.convo_name }, (err, results) => {
            if (err) throw err;
            let convo_name = req.body.convo_name;
            pool.query("SELECT convo_name, message,dp_path, message_id, timestamp, name FROM messages INNER JOIN users ON messages.user_id = users.id WHERE convo_name = ? ORDER BY timestamp DESC LIMIT 10", [convo_name], (err, results) => {
                if (err) throw err;

                notif.to(convo_name).emit('new msg', results.reverse());
                console.log(convo_name)
                res.status(200)
            })



        })
    });
    //Admin routes starts here....




    return router;
}