const path = require("path");
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
    startApp();
});
function displayAll(){
    connection.query (SELECT employee.first_name, employee.last_name, employee.role_id, employee.manager_id, role.title, role.salary
    INNER JOIN 
    role
    on employee.role_id=role.id
    LEFT OUTER JOIN
    department
    on role.department_id=department.id; function(err, res) {
        if (err) throw err;
        console.table(res)
        mainOptions()
    }) 
}