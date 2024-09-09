create database payroll_service;
use payroll_service;
show databases;
select database();
create table employee_payroll(
id INT unsigned NOT NULL auto_increment,
name VARCHAR(150) NOT NULL,
salary Double NOT NULL,
start Date NOT NULL,
primary key (id)
);
describe employee_payroll;
INSERT INTO employee_payroll (name,salary,start) VALUES
('Raj',100000.0,'2024-01-03'),
('Ashwini',200000.0,'2023-08-13'),
('Tej', 300000.0,'2024-09-12'),
('Shree' ,400000.0,'2023-07-11');





