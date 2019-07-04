const mysql = require("mysql")
// module.exports = mysql.createPool({
//     multipleStatements: true,
//     connectionLimit: 1,
//     host: 'sql146.main-hosting.eu',
//     user: 'u687158084_janan',
//     password: 'z0TrMOaFctqD',
//     database: 'u687158084_sds'
// });
module.exports = mysql.createPool({
    multipleStatements: true,
    connectionLimit: 1,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'survey'
});