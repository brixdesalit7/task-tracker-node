const mysql = require("mysql");
const dotenv = require("dotenv");
dotenv.config({
    path: "./.env",
})

const connection = mysql.createConnection(({
    host: process.env.DB_HOST || "localhost",
    user: process.env.DB_USER || "root",
    password : process.env.DB_PASS || "",
    database : process.env.DB_NAME || "task-tracker"
}))

connection.connect((err) => {
    if(err) {
        return console.log(`Database connection unsuccessful ${err}`)
    }

    console.log("Database connection success");
})

module.exports = connection