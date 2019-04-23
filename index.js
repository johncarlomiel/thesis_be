const express = require("express");
const jwt = require('jsonwebtoken');
const mysql = require("mysql")
const cors = require('cors');
const chalk = require('chalk');
const path = require('path')
const bcrypt = require('bcrypt');


const app = express();

app.use(function (req, res, next) {

   // Website you wish to allow to connect
   res.setHeader('Access-Control-Allow-Origin', '*');

   // Request methods you wish to allow
   res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

   // Request headers you wish to allow
   res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

   // Set to true if you need the website to include cookies in the requests sent
   // to the API (e.g. in case you use sessions)
   res.setHeader('Access-Control-Allow-Credentials', true);

   // Pass to next layer of middleware
   next();
});



app.use(express.json());
app.use(express.urlencoded({ extended: true }))
app.use("/public", express.static(path.join(__dirname + '/public')))


//For testing purposes
// const PORT = process.env.PORT || 8080
// var server = app.listen(PORT, () => {
//    console.log("Server started at port 5000");
// });

// For deployment
const PORT = process.env.PORT || 8080
var server = app.listen(PORT, () => {
   console.log("Server started at port 8080")
});
var io = require('socket.io').listen(server, { log: false, origins: '*:*' });


//Routes
const authRoutes = require('./routes/auth');
const mobileRoutes = require('./routes/user/mobile');
const chatRoutes = require('./routes/user/chat')(io);
const webRoutes = require('./routes/user/web');
const admin = require('./routes/admin/admin');
const adminGraph = require('./routes/admin/graph');
const invitation = require('./routes/user/invitation');

app.use((req, res, next) => { res.locals["socketio"] = io; next(); });

app.use('/auth', authRoutes);

app.use('/user', mobileRoutes);
app.use('/user', webRoutes);
app.use('/user', chatRoutes);
app.use('/user', invitation);

app.use('/admin', admin);
app.use('/admin', adminGraph);
// var users = [];






