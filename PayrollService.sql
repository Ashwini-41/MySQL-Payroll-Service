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





