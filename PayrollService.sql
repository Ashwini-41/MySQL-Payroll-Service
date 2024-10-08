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

select * from employee_payroll;
select * from employee_payroll where name = 'Ashwini';
select * from employee_payroll WHERE start BETWEEN CAST('2022-01-01'
AS DATE) AND DATE(NOW());
ALTER TABLE employee_payroll ADD gender char(1) AFTER name;
UPDATE employee_payroll set gender =
'M' where name = 'Shree' or name =
'Raj' or name = 'Tej';
UPDATE employee_payroll set gender =
'F' where name = 'Ashwini';
select * from employee_payroll;
SELECT SUM(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;
SELECT SUM(salary) FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;
Select gender,Avg(salary) from employee_payroll group by gender;
Select count(*) from employee_payroll; 
select MIN(salary) from employee_payroll where gender = 'M';
select MAX(salary) from employee_payroll where gender = 'M';

ALTER TABLE employee_payroll ADD COLUMN employee_phone VARCHAR(10),
ADD COLUMN employee_address VARCHAR(50) DEFAULT "Pune",
ADD COLUMN department VARCHAR(10) NOT NULL;

SELECT * FROM employee_payroll;

ALTER TABLE employee_payroll
ADD COLUMN basic_pay DECIMAL(15, 2),
ADD COLUMN deductions DECIMAL(15, 2),
ADD COLUMN taxable_pay DECIMAL(15, 2),
ADD COLUMN income_tax DECIMAL(15, 2),
ADD COLUMN net_pay DECIMAL(15, 2);

select * from employee_payroll;

ALTER TABLE employee_payroll
MODIFY salary DECIMAL(10,2) DEFAULT 0.00,
ALTER COLUMN start SET DEFAULT '2024-01-01';

UPDATE employee_payroll
SET department = "Sales"
WHERE name = "Tej";

INSERT INTO employee_payroll (name,gender, basic_pay, deductions, taxable_pay, income_tax, net_pay, employee_phone, employee_address, department)
VALUES
('Teressa','F', 50000.00, 2000.00, 48000.00, 8000.00, 40000.00, '1234567890', 'Pune', 'Sales'),
('Teressa','F', 52000.00, 2500.00, 49500.00, 8250.00, 41250.00, '0987654321', 'Pune', 'Sales');

SELECT * FROM employee_payroll;












