SELECT *
FROM parks_and_recreation.employee_demographics	;

SELECT first_name, 
last_name, 
birth_date, 
age,
(age + 10) * 10,
age +10 * 10
FROM parks_and_recreation.employee_demographics	;

SELECT DISTINCT first_name, gender
FROM employee_demographics;

select distinct gender from employee_demographics;

#using where clause
select * from employee_demographics;

select * from employee_demographics where gender='male';

#using relational operators (=, >, <, >=, <=, Not equal to <>)
select * from employee_demographics where employee_id =1;

select * from employee_salary;
select * from employee_salary where salary > 50000;
select * from employee_salary where salary < 50000;
select * from employee_salary where salary >= 50000;
select * from employee_salary where salary <= 50000;
select * from employee_salary where salary <> 70000;

# using logical operators in WHERE clause conditons 
#AND, NOT, OR, BETWEEN, NOT BETWEEN 
#select * from employee_salary where condition 1 AND/OR/NOT condition 2
select * from employee_salary;
select salary from employee_salary;
SELECT * from employee_salary where employee_id >4 and salary >= 55000;
SELECT * from employee_salary where employee_id >4 and salary >= 55000 and occupation <> 'nurse';

select * from employee_salary;
select * from employee_salary where employee_id < 5 or dept_id  = 1;

select * from employee_salary;
select * from employee_salary where salary >= 50000;
select * from employee_salary where NOT salary >= 50000;
select * from employee_salary where NOT salary >= 50000 and salary < 21000;

#Using BETWEEN operator
select * from employee_demographics;
select * from employee_demographics where age between 35 and 43;

#another way to get same result as line 50 is
select * from employee_demographics where age >= 35 and age <= 43;

#Using NOT BETWEEN operator
select * from employee_demographics;
select * from employee_demographics where age not between 35 and 43;

#another way to get same result as line 57 is
select * from employee_demographics where age < 35 or age > 43;

#ORDER BY Clause. one of these two keywords (ASC & DESC) is required to be used along with this clause
select * from employee_demographics;
select * from employee_demographics order by age desc, first_name asc;

#using BETWEEN operator with a TEXT
select * from employee_demographics;
select * from employee_demographics where first_name between 'April' and 'Jerry' ;

select * from employee_demographics where first_name between 'April' and 'Jerry' order by first_name desc;

