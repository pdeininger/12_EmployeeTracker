const inquirer = require("inquirer");
const mysql = require("mysql");
const consoleTable = require("console.table");

var PORT = process.env.PORT || 8080;

//create a connection 
var connection = mysql.createConnection({
    host:  "localhost",
    //your port, if not 3306
    port:  3306,
    //user name
    user:  "root",

    //password
    password:  "Boot55camp!",
    database:  "employee_tracker",
});

//connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    //run the start function 
    startApp();
});

function startApp(){
    inquirer.prompt([])
}