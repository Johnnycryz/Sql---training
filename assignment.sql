# ASSIGNMENT FOR THE WEEK

use parks_and_recreation;
select * from employee_demographics;
# 1 Retrieve all employees whose age is above 40.
select * from employee_demographics where age > 40;
# 2. Display only unique genders from employee_demographics.
select distinct gender from employee_demographics;
# 3 Show all employees whose last name ends with ‘son’.
select * from employee_demographics where last_name like '%son';
# 4. Return all employees whose age is between 30 and 50 (use 2 methods).
select * from employee_demographics where age between 30 and 50;
select * from employee_demographics where age >= 30 and age <= 50;

# List all employees whose occupation is NOT ‘Nurse’.
select * from employee_salary;
select * from employee_salary where occupation not 'Nurse';
select * from employee_salary where occupation <> 'Nurse';
/* I struggled to remember what is used to represent 'Not equal to' with a string char. 
I know I can't use < or > because this deals with alphabetical order not a particular word.
Then i tried to use <> (which to me it is 'less than and greater' the text or number*/

# PART B — LOGICAL OPERATORS
# 6. Show all employees with salary above 50,000 AND dept_id = 1.
select * from employee_salary;
select * from employee_salary where salary > 50000 and dept_id = 1;
# 7. Show employees whose employee_id is < 5 OR salary > 60,000.
select * from employee_salary where employee_id < 5 or salary > 60000;
# 8. Return all employees whose salary is NOT between 40,000 and 70,000.
select * from employee_salary where salary < 40000 or salary > 70000;
#seems i am still struggling with 'NOT, NOT BETWEEN'

# 9. Display the youngest 5 employees (sorted ascending by age).
select * from employee_demographics;
select * from employee_demographics 
order by age asc
limit 5; 
# 10. Show the top 10 highest salaries.
select * from employee_salary 
order by salary desc
limit 10;
# 11. Sort employees by age descending, then first_name ascending.
select * from employee_demographics
order by age desc,
first_name asc;
# the order by first_name will not show because there are no two names with thesame age

# 12. Show first_name, last_name, and a column called full_name (using CONCAT).
select * from employee_demographics;
select first_name, last_name, concat(first_name, ' ', last_name) as full_name 
from employee_demographics;

#13. Show all film titles with their length, but only return titles where length ≤ 10.
use sakila;
select * from film;
select title, length from film where length <= 60;

#14. From the city table, return the substring of city starting from position 3 for 4 characters.
select * from city;
select city, substr(city, 3,4) as city_code from city;

# 15. Show titles that contain ‘ar’ using INSTR() > 0.
select title from film where instr(title, 'ar') > 0 ;

# 18. Using the film table, show rental_duration and its remainder when divided by 3 (MOD).
select * from film;
select title, rental_duration, mod(rental_duration, 3) from film;

# 19. Find the absolute difference between 5 and -12 using ABS().
select abs (5 - -12);

#20. Show greatest number among (23.4, 45, 12.9).
select max (23.4, 45, 12.9);

#21. In the film table, return the rental_duration and the truncated square root (2 decimals).
select title, rental_duration, 
sqrt(rental_duration), 
truncate(sqrt(rental_duration), 2) from film;

# 22. Show the current date, current time, and system date.
select current_date(), current_time(), sysdate();

/*23. From the payment table:
•	extract month
•	extract month name
•	show all payments made in June
•	show all payments after June ordered by month */
select * from payment;
select payment_id, month(payment_date), monthname(payment_date) from payment;
select * from payment where month(payment_date) = 6;
select * from payment where month(payment_date) > 6 order by month(payment_date) asc;

# 24. From actor table, show last_update and the minute (MINUTE function)
select * from actor;
select last_update, minute(last_update) from actor;

/*# 25. From payment table return:
•	MIN(amount)
•	MAX(amount)
•	AVG(amount)
•	SUM(amount) 
•	COUNT(*) */
select * from payment;
select min(amount), 
max(amount), 
avg(amount), 
sum(amount), 
count(amount) from payment;

# 26. Count how many actors are in the actor table.
select * from actor;
select count(actor_id) from actor;

#27. Create a new database called practice_sql.
create database practice_sql;

#28. Inside it, create a table departments (dept_id INT, dept_name VARCHAR(20)).
create table departments ( dept_id int, dept_name varchar (20));
describe departments;

#29. Create a table staff using existing columns from employee_demographics (employee_id, first_name, age).
use parks_and_recreation;
create table staff as select employee_id, first_name, age from employee_demographics ;
describe staff;

#30. Insert 5 records into staff.
insert into staff values (001, 'Johnson', 24),
(002, 'Manuel', 28),
(003, 'Gabe', 21),
 (004, 'Buonot', 30),
 (005, 'Numi', 20);

select * from staff;

#31. Delete one of the five records you just added
DELETE FROM staff
WHERE first_name = 'Johnson'
  AND age = 24
LIMIT 1;

# 32. Write a query to return the full names of employees who earn more than the average salary.
select * from employee_salary;
select avg(salary) from employee_salary;
select concat(first_name, ' ', last_name) as full_name, salary
from employee_salary 
where salary > (select avg(salary) from employee_salary); 
# i did struggle with using avg with the where clause. so i need more explanation

#33. Show all employees whose first name starts with the same first letter as their last name.
select first_name, last_name,
substr(first_name,1,1) as F_N_letter,
substr(last_name,1,1) as L_N_letter 
from employee_demographics;

select first_name, last_name
from employee_demographics
where substr(first_name,1,1) = substr(last_name,1,1);
# i will need to learn all use cases of WHERE clause

# 34. Return the top 3 highest salaries for employees in dept_id = 3.
select * from employee_salary;
select * from employee_salary 
where dept_id = 3
order by salary desc;

/* 35. Write a query to categorize employees into:
•	‘Young’ if age < 30
•	‘Middle-aged’ if 30–50
•	‘Senior’ if > 50
(use CASE WHEN)*/
SELECT first_name, last_name, age,
       CASE
           WHEN age < 30 THEN 'Young'
           WHEN age BETWEEN 30 AND 50 THEN 'Middle-aged'
           WHEN age > 50 THEN 'Senior'
       END AS age_category
FROM employee_demographics;
# I don't know this, i had to search online I am yet to be familiar with CASE WHWN

/* 36. Create a table called salary_report with:
•	employee_id
•	name
•	dept
•	net_salary
Then insert all employees from employees table into salary_report with dept and salary initially NULL.*/
create table salary_report (employee_id int, name varchar(25), dept varchar(20), net_salary int);
insert into salary_report (employee_id, name) 
select employee_id, concat(first_name, ' ', last_name), Null, Null 
from employee_demographics;

select * from salary_report;
