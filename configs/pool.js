const mysql = require("mysql")
module.exports = mysql.createPool({
    multipleStatements: true,
    connectionLimit: 1,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'survey'
});