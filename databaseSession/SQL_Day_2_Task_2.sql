REM   Script: SQL_Day_2_Task_2
REM   create one employee table with , employee_id, emp_fname, emp_lname, gender, dob, email, salary, dep_id, loc_id select the datatype as per your choice

create table departments ( dept_id, dept_name)

create table locations ( loc_id, loc_name) 

CREATE TABLE Department( 
    dep_id INT PRIMARY KEY, 
    dep_name VARCHAR(50) NOT NULL 
);

CREATE TABLE Location( 
    loc_id INT PRIMARY KEY, 
    loc_name VARCHAR(50) NOT NULL 
);

CREATE TABLE Employee( 
    employee_id INT PRIMARY KEY, 
    emp_fname VARCHAR(50) NOT NULL, 
    emp_lname VARCHAR(50) NOT NULL, 
    gender VARCHAR(20), 
    dob DATE, 
    email VARCHAR(100), 
    salary NUMERIC(*, 2) NOT NULL, 
    dep_id INT REFERENCES Department(dep_id), 
    loc_id INT REFERENCES Location(loc_id) 
);

INSERT INTO Department(dep_id, dep_name) 
VALUES 	(1, 'HR');

SELECT * FROM Department;

INSERT INTO Location(loc_id, loc_name) 
VALUES 	(1, 'Imadol');

SELECT * FROM Location;

INSERT INTO Employee(employee_id, emp_fname, emp_lname, salary, dep_id, loc_id) 
VALUES (1, 'Pranima', 'Kansakar', 12000.00, 1, 1);

SELECT * FROM Employee;

