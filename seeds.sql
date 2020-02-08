DROP DATABASE IF EXISTS employee_tracker;

CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE department (
    id Integer NOT NULL AUTO-INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role
    id Integer NOT NULL AUTO-INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    deartment_id Integer NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id Integer NOT NULL AUTO-INCREMENT,
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

INSERT INTO employee (last_name, first_name, role_id, manager_id) values ('Smith', 'Robert', 1, 234 );
INSERT INTO employee (last_name, first_name, role_id, manager_id) values ('James', 'Rick', 2,  567);
INSERT INTO employee (last_name, first_name, role_id, manager_id) values ('Edwards', 'Alyssa', 3, 923 );
INSERT INTO employee (last_name, first_name, role_id, manager_id) values ('Guerrero', 'Vickie', 4, 437 );
INSERT INTO employee (last_name, first_name, role_id, manager_id) values ('Fletcher', 'Jessica', 5, 652);

SELECT * FROM employee;

INSERT INTO role (title, salary, department_id) values ('Developer', 75000, 55);
INSERT INTO role (title, salary, department_id) values ('Wholesaler', 100000, 65);
INSERT INTO role (title, salary, department_id) values ('Designer', 65000, 75);
INSERT INTO role (title, salary, department_id) values ('Paralegal', 55000, 85);
INSERT INTO role (title, salary, department_id) values ('Processor', 45000, 95);

SELECT * FROM role;

