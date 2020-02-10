DROP DATABASE IF EXISTS employee_tracker;

CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE department (
    id Integer auto_increment NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role (
    id Integer auto_increment NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    deartment_id Integer NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id Integer auto_increment NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    role_id Integer NOT NULL,
    manager_id Integer NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO department (name) Value ("IT");
INSERT INTO department (name) Value ("Sales");
INSERT INTO department (name) Value ("Marketing");
INSERT INTO department (name) Value ("Legal");
INSERT INTO department (name) Value ("Service");

SELECT * FROM department;

INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Robert', 'Smith', 1, 234 );
INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Rick', 'James', 2,  567);
INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Alyssa', 'Edwards', 3, 923 );
INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Vickie', 'Guerrero', 4, 437 );
INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Jessica', 'Fletcher', 5, 652);

SELECT * FROM employee;

INSERT INTO role (title, salary, department_id) values ('Developer', 75000, 55);
INSERT INTO role (title, salary, department_id) values ('Wholesaler', 100000, 65);
INSERT INTO role (title, salary, department_id) values ('Designer', 65000, 75);
INSERT INTO role (title, salary, department_id) values ('Paralegal', 55000, 85);
INSERT INTO role (title, salary, department_id) values ('Processor', 45000, 95);

SELECT * FROM role;

