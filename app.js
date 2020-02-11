const path = require("path");
const inquirer = require("inquirer");
const mysql = require("mysql");
const consoleTable = require("console.table");

var PORT = process.env.PORT || 8080;
//create a connection
var connection = mysql.createConnection({
  host: "localhost",
  //your port, if not 3306
  port: 3306,
  //user name
  user: "root",
  //password
  password: "Boot55camp!",
  database: "employeetracker"
});
//connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  console.log("connected");

  displayAll();
});

function displayAll(){
  connection.query ('SELECT employee.first_name, employee.last_name, employee.role_id, employee.manager_id, role.title, role.salary, role.department_name')
FROM employee;
JOIN
role
On employee.role_id = role.id
LEFT OUTER JOIN
department
On role.department_id=department.id;',function(err, res)
      if (err) throw err;
 console.table(res)
 mainOptions()
 }
 function mainOptions() {
     inquirer.prompt ({
         name:  "questions",
         type:  "list",
         message:  "What would you like to do?",
         choices:  ["Add Employees", "Add Roles", "Add Departments", "View Employees", "View Roles", "View Departments", "Delete Employees", "Delete Roles", "Delete Departments"]
     })
             {
                 name:  "View Employees",
                 value: "All_Employees"
             },
             {
                 name:  "New Employee",
                 value:  "New_Employee"
             },
             {
                 name:  "Update Employee Role",
                 value:  "Update_Role"
             },
             {
                 name:  "View All Roles",
                 value:  "View_Roles"
             },
             {
                 name:  "Add Role",
                 value:  "Add_Role"
             },
             {
                 name:  "View All Departments",
                 value:  "View_Departments"
             },
             {
                 name:  "Add Department",
                 value:  "Add_Department"
             },
             {
                 name:  "Quit",
                 value:  "Quit"
             }
                ]     
                
