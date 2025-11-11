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
#select * from employee_salary where condition 1  AND/OR/NOT condition 2
select * from employee_salary;
select salary from employee_salary;
SELECT * from employee_salary where employee_id >4 and salary >= 55000;
SELECT * from employee_salary where employee_id >4 and salary >= 55000 and occupation <> 'nurse';

select * from employee_salary;
select * from employee_salary where employee_id < 5 or dept_id  = 1;
select * from employee_salary where employee_id > 5 and dept_id  = 1;

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

#10-Nov-2025
# Using IN operator: 
select * from employee_demographics;
select * from employee_demographics where employee_id between 1 and 3;
select * from employee_demographics where employee_id in (1, 3, 9);
# this helps to show specific data in a table by specifying attributes in a particular column
select * from employee_demographics where first_name in ('Ann', 'Mark');
# this is like a filter to get specific data

#LIKE operators and wildcard characters (%, _)
#both LIKE and wildcards characters must be used together. the purpose is for pattern matching
# pecntile (%) is used for multi char or zero character
# underscore (_) is used for single char
select * from employee_demographics;
select * from employee_demographics where first_name like 'A%';
select * from employee_demographics where first_name like '%A';
select * from employee_demographics where first_name like 'C%G';
select * from employee_demographics where first_name like '%n%';
select * from employee_demographics where first_name like '%nn%';
select * from employee_demographics where first_name like '%a%';
# in line 92, 'April' , 'Andy' and 'Ann' are showing in the result because, % can represent either
# ... zero or multiple character 

select * from employee_demographics where first_name like 'A_';
# this result shows null because underscore is used for only one character
select * from employee_demographics where first_name like 'A__';
select * from employee_demographics where first_name like 'A_r__';
#underscore is like fill in the gap in english
#both can be wildcards can be used together
select * from employee_demographics;
select * from employee_demographics where first_name like 'A_d%';

