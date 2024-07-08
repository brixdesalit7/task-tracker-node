const mysql = require("mysql");
const dotenv = require("dotenv");
dotenv.config({
    path: "./.env",
})

const connection = mysql.createConnection(({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password : process.env.DB_PASS,
    database : process.env.DB_NAME
}))

connection.connect((err) => {
    if(err) {
        console.log(`Database connection unsuccessful ${err}`)
    }

    console.log("Database connection success");
})

module.exports = connection