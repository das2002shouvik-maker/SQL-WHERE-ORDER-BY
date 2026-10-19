# SQL Assignment WHERE CLAUSE and ORDER BY CLAUSE:	

CREATE DATABASE ASSIGNMENTS;

USE ASSIGNMENTS;

CREATE TABLE EMPLOYEES
(
	emp_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    age INT,
    department VARCHAR(20),
    salary INT,
    city VARCHAR(20),
    join_date DATE
);

-- drop table employees;

select * from employees;

INSERT INTO EMPLOYEES (name,age,department,salary,city,join_date) VALUES 

('Amit', 25, 'HR', 30000, 'Pune', '2022-01-10'),
('Neha', 30, 'IT', 60000, 'Mumbai', '2021-03-15'),
('Raj', 28, 'Finance', 50000, 'Delhi', '2020-07-20'),
('Priya', 35, 'IT', 70000, 'Pune', '2019-11-01'),
('Karan', 40, 'HR', 45000, 'Bangalore', '2018-05-23'),
('Sneha', 26, 'Finance', 48000, 'Mumbai', '2022-08-19');

select * from employees;

-- 1.	Select all employees from Pune.

SELECT * FROM EMPLOYEES
WHERE City = 'Pune';

-- 2.	Find employees with salary greater than 50000.

Select * from employees
where salary > 50000;

-- 3.	Get employees whose age is less than 30.

select * from employees
where age < 30;

-- 4.	Show employees working in IT department.

select * from employees
WHERE department = 'IT';

-- 5.	Find employees from Pune AND working in HR.

select * from employees
where city = 'Pune' AND department = 'HR';

-- 6.	Find employees from Mumbai OR salary greater than 60000.

select * from employees
where city = 'Mumbai' OR salary > 60000;

-- 7.	Show employees NOT working in Finance.

select * from employees
where department <> 'Finance';

-- 8.	Find employees with salary BETWEEN 40000 AND 70000.

select * from employees
where salary BETWEEN 40000 AND 70000;

-- 9.	Get employees who joined between 2020 and 2022.

select * from employees
where join_date BETWEEN '2020-01-01' AND '2022-12-31';

-- 10.	Find employees working in HR, IT, or Finance.

select * from employees
where department IN ('HR','IT','Finance');

-- 11.	Get employees from cities Pune, Mumbai.

select * from employees
where city IN ('Pune','Mumbai');

-- 12.	Find employees whose name starts with 'A'.

select * from employees
where name LIKE 'A%';

-- 13.	Find employees whose name ends with 'a'.

select * from employees
where name like '%a';

-- 14.	Find employees whose name contains 'e'. 

select * from employees
where name like '%e%';

-- 15.	Find employees whose name has exactly 5 characters.

select * from employees
where name like '_____';

-- 16.	Display employees sorted by salary ascending.

select * from employees
order by salary asc;

-- 17.	Display employees sorted by salary descending.

select * from employees
order by salary desc;

-- 18.	Sort employees by age, then by salary.

select * from employees
order by age ASC,salary DESC;

-- 19.	Show employees sorted by name alphabetically.

select * from employees
order by name ASC;

-- 20.	Sort employees by department (ASC) and salary (DESC).

select * from employees
order by department asc, salary desc;

-- BONUS CHALLENGE QUESTIONS:

-- 1.	Find employees with salary > 40000 AND city = 'Pune', sorted by salary DESC.

select * from employees
where salary > 40000 AND City = 'Pune'
ORDER BY Salary DESC;


-- 2.	Get employees whose name starts with 'S' and salary between 40000 and 60000.

select * from employees
where name like 'S%' AND Salary BETWEEN 40000 AND 60000;

-- 3.	Find employees not in HR department and sort by age.

select * from employees
where department <> 'HR' 
ORDER BY Age ASC;
