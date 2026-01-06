# how to create a database
show databases; 
# line 2 will show all the databases available on the machine

create database cryzo_data;
drop database cryzo_data;
# 'CREATE DATABASES' will create a new database while 'DROP' will delete it
create database cryzo_data;
select * from actor;

use world;
show tables;
#this will display all the existing tables in a database

#how to create a table
use cryzo_data;
create table employees (ID int, name varchar(15), experience int);
# CREATE TABLE is the keyword used to create a new table in a database
# ID, name & experience - all these 3 are column names in the employees table
# int & varchar - int is the integer datatype and 'varchar' is the alphabets datatype
# 15 - this is the max lenght of text allowed in the column 'name'
show tables;
describe employees;
select * from employees;

create table salary (dept varchar (10), net_salary int) as 
select ID, name from employees
;
show tables;
#line 26 to 28 will create a new table using columns from existing table
select * from salary;
#this will create a new table, but the arrangement of column required is ID, name, dept, net_salary

drop table salary;
create table salary 
(ID int, name varchar (15), dept varchar (10), net_salary int);
# the arrangement i am looking for in line 32 can only be gotten by creating the table first,
# then I can go ahead and insert the data in both ID and name column from employees table to salary table

select * from salary;
show tables;
select * from employees;
# how to insert data into a table using INSERT INTO keyword
insert into employees values (001, 'Opeyemi Owolabi', 6);
insert into employees values (002, 'Tosin Ajalenko', 4);
insert into employees values (002, 'Tosin Ajalenkoko', 4);
insert into employees values (003, 'Musa Usman', 7);
insert into employees values (004, 'Johnson Jay');
#line 46 is giving error because the name 'Tosin Ajalenkoko' is more than 15 characters as specified in the column attribute when createing the table
# you should be careful, because if you run thesame line of insert code multiple times, a new record will be created everytime you run it
# line 48 won't run because the employees table has 3 column but the value being provided is just for 2 columns
# to make line 48 work, you need to specify the name column in the code
insert into employees (ID, name) values (004, 'Johnson Jay');