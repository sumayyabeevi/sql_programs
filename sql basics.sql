CREATE DATABASE IF NOT exists school;
SHOW DATABASES;
USE school;
-- DROP DATABASE IF EXISTS school;
-- hello --
CREATE TABLE Students(roll_number int ,s_name varchar(20));
INSERT  INTO Students values(1,"sumayya");
-- DROP TABLE Students;
ALTER TABLE  Students ADD phone int ;
ALTER TABLE Students modify phone varchar(20);
ALTER TABLE Students change phone course varchar(20);
ALTER TABLE Students DROP COLUMN course;
SELECT * FROM Students;
SELECT s_name from Students;
set sql_safe_updates=0;
UPDATE Students set s_name="sumayya shamseer" where roll_number=1;
INSERT INTO Students(s_name) values("irfan");
INSERT INTO Students(roll_number,s_name) values(3,"faiha"),(4,"muna");
update Students set roll_number=2 where s_name="irfan";
INSERT INTO Students (s_name) values ("shamserr");
UPDATE Students set roll_number=5 where roll_number is null;
CREATE DATABASE IF NOT exists abc; 
USE abc;
CREATE TABLE employee (emp_id int ,emp_name varchar(20),emp_salary int,emp_address varchar(50));
-- SELECT *FROM employee;
INSERT INTO employee values(1,"Ayisha",50000,"104 morrisville "),(2,"Nizi",40000,"920  cary"),(3,"Haseena", 45000,"230 morrisville");
SELECT * FROM employee;
UPDATE employee set emp_salary=65000 where emp_id=1;
ALTER TABLE employee  ADD emp_email varchar(100);
ALTER TABLE employee modify emp_email varchar(150);
ALTER TABLE employee change emp_name full_name varchar(25);
UPDATE employee SET emp_email="a@gmail.com "where full_name="Ayisha";
update employee set emp_email="n@gmail.com" where full_name= "Nizi";
update employee set emp_email="h@gmail.com" where full_name= "Haseena";
ALTER TABLE employee RENAME COLUMN full_name TO fullname;
ALTER TABLE employee RENAME TO employee_details;
DESCRIBE employee_details;
ALTER TABLE employee_details DROP COLUMN emp_email;
SELECT fullname FROM employee_details where emp_salary>=45000;
SELECT * from employee_details order by fullname desc;
SELECT fullname,emp_address from employee_details;
ALTER TABLE employee_details RENAME COLUMN emp_address  TO fulladdress ;
SELECT * from employee_details order by emp_salary desc LIMIT 1;
SELECT * FROM employee_details order by emp_salary limit 2;
INSERT INTO employee_details values(1,"Ayisha",50000,"104 morrisville ");
SELECT * FROM employee_details;
SELECT DISTINCT fullname from  employee_details;
SELECT COUNT(DISTINCT fullname) from employee_details;
-- agregate function
SELECT count(fullname) from employee_details;
SELECT fullname,avg(emp_salary)as average_salary
 FROM employee_details
group by fullname ;
SELECT fullname,count(emp_salary) as number_of_employees from employee_details group by fullname; 
DELETE FROM employee_details where emp_id=1;
DELETE FROM employee_details;
select*from employee_details;
-- DROP TABLE employee_details;








