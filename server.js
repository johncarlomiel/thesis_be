const express = require("express");
const jwt = require('jsonwebtoken');
const mysql = require("mysql")
const cors = require('cors');
const chalk = require('chalk');
const path = require('path')
const bcrypt = require('bcrypt');


const app = express();
// app.use(cors);




app.use(express.json());
app.use(express.urlencoded({ extended: true }))
app.use("/public", express.static(path.join(__dirname + '/public')))
const PORT = process.env.PORT || 5000
var server = app.listen(PORT, () => {
    console.log("Server started at port 8080")
});
var io = require('socket.io').listen(server);

//Routes
const authRoutes = require('./routes/auth');
const mobileRoutes = require('./routes/user/mobile');
const chatRoutes = require('./routes/user/chat')(io);
const webRoutes = require('./routes/user/web');
const admin = require('./routes/admin/admin');
const adminGraph = require('./routes/admin/graph');
app.use((req, res, next) => { res.locals["socketio"] = io; next(); });

app.use('/auth', authRoutes);

app.use('/user', mobileRoutes);
app.use('/user', webRoutes);
app.use('/user', chatRoutes);

app.use('/admin', admin);
app.use('/admin', adminGraph);
// var users = [];




