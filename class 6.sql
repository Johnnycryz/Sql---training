use sakila;
# TRUNCATE STATEMENT
select * from address;
use cryzo_data;
show tables;
select * from emp order by id;
insert into emp values (9,'Manmud Ugu',3,'Safety');
delete from emp where ID is null;
rollback;
set autocommit = 0;
delete from emp where ID =2 ;
truncate  emp where ID = 9;
#line 12 will not work because, truncate will delete all data in a table and not part of the data
#it is safe to use DELETE statement instead of truncate
select * from salary;
insert into salary values (4, 'Mjnu and', 'IT', 55000);
truncate table salary;
set autocommit = 1;

# GROUP BY CLAUSE
# It is to group the retrieved records according to specified column
use sakila;
select * from film_category;
select rating, count(title) from film group by rating;

select * from payment;
select customer_id, sum(amount) 
from payment group by customer_id
order by sum(amount) desc;

# HAVING clause
select * from actor;
# use WHERE clause as a condition for SELECT statement
# use HAVING clause as a conditon for GROUP BY statement
use world;
select * from country;
select * from country where continent = 'Europe';
select continent, count(name) 
from country group by continent
having count(name) < 50;
# HAVING clause can sometimes be used in place of WHERE clause, but WHERE clause cannot replace HAVING clause
select * from country having continent = 'Asia';

#the order of using WHERE, GROUP BY, HAVING, ORDER BY clauses
select * from country;
select * from country where surfacearea > 1000;
select  continent, count(name) from country where surfacearea > 100
group by continent having count(name) > 30 order by count(name); 

# SET operators
# set operators are used to retrieve data from two or multiple tables.
# there are different set operators (Union, Union All, Intersect, Minus)
use cryzo_data;

/* UNION will retrieve all data from the tables in the code without the duplicates
whereas UNION ALL will retrieve all data including the duplicates. INTERSECT will 
only retrieve records that are common to the tables. MINUS will retrieve record base on your code */

create table Head_count (Id int, supervisors int, junior int);
insert into Head_count values (1, 1, 5);
insert into Head_count values (2, 1, 3);
insert into Head_count values (3, 2, 18);
select * from head_count;

create table dept (Id int, dept_name varchar (10), sup_name varchar (22));
alter table dept modify column dept_name varchar (15);
insert into dept values (1, 'Sales', 'Moyo Salau'),
(2, 'Quality', 'Abbey City'), (3, 'Engineering', 'Moshood Lawal');
select * from dept;

select * from head_count union select * from dept;
select id from head_count union select id from dept