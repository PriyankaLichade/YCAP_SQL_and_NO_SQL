create database day2;
use day2;

create table employees(
emp_id INT primary key,
emp_name VARCHAR(30),
manager_id INT default 1
);

select * from employees;
INSERT INTO employees VALUES
(1,"Priyanka", NULL),
(2,"Rahul", 1),
(3,"Amol",2);

update day2
set manager_id = 1 where emp_id=3;
select
e.emp_name as Employee,
m.emp_name as Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;