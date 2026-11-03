CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE departments (
                         department_id int,
                         department_name VARCHAR(100)
                         );

CREATE TABLE Location (
                         location_id int,
                         location_name VARCHAR(100)
                         );
CREATE TABLE Employees (
                         employee_id int,
                         employee_name VARCHAR(100),
                         gender ENUM('M','F'),
                         age INT,
                         hire_date DATE,
                         designation VARCHAR(100),
                          department_id int,
                          location_id int,
                          salary DECIMAL(10,2)
                          );
ALTER TABLE Employees ADD COLUMN email VARCHAR(100);
ALTER TABLE Employees MODIFY COLUMN designation LONGTEXT;
ALTER TABLE Employees DROP COLUMN age;
ALTER TABLE Employees RENAME COLUMN hire_date  TO date_of_joining;

DESCRIBE Employees;

RENAME TABLE departments TO Department_info;
DESCRIBE Department_info;

RENAME TABLE Location TO Location_info;

TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE EMPLOYEE;

SHOW DATABASES;

-- Constaints
-- Database Recreation
CREATE DATABASE employee;
use employee;
CREATE TABLE departments (
                         department_id int PRIMARY KEY,
                         department_name VARCHAR(100) UNIQUE NOT NULL
                         );
                         
DESCRIBE departments;

CREATE TABLE Location (
                         location_id int AUTO_INCREMENT PRIMARY KEY ,
                         location_name VARCHAR(100) NOT NULL UNIQUE
                         );
                         SELECT curdate();
CREATE TABLE Employees (
                         employee_id int PRIMARY KEY ,
                         employee_name VARCHAR(100) NOT NULL,
                         gender ENUM('M','F'),
                         age INT CHECK (age>=18),
                         hire_date DATE DEFAULT (current_date()),
                         designation VARCHAR(100),
                         department_id INT,
                         FOREIGN KEY  (department_id ) REFERENCES departments(department_id) ,
                         location_id INT,
                         FOREIGN KEY( location_id ) REFERENCES Location(location_id) ,
                          salary DECIMAL(10,2)
                          );
						DESCRIBE Employees;
                        
                          