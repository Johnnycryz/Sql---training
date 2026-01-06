# Data types
/* it is important to specify data types in a column because it helps to perform specific 
operation on the data in that column */
/*Types: 
String (varchar (size)), 
numeric (int, double, boolean, ), 
date & time data types (date, time, datetime,year)*/
use cryzo_data;
create table xyz (a int, b varchar(15));
insert into xyz values (1, 'Bolu');
select * from xyz;
insert into xyz values (2.7, 'Tosin');
select * from xyz;
/* although 2.7 was specified into the second record, the value was changed to 3 because 
the data type for column a is an int not a decimal*/
drop table xyz;

create table xyz (a double);
select * from xyz;
insert into xyz values (9);
insert into xyz values (3.3);
/* with 'double' data type, you can insert both int and decimal values into a column*/
drop table xyz;

create table xyz (a boolean);
select * from xyz;
insert into xyz values (9);
describe xyz;
insert into xyz values (false);
insert into xyz values (true);
/* with 'boolean' any value above zero means true while zero means false
if you insert non-numerical values, it won't work
if you insert 'false' or 'true' as your data, it will be change to 0 and 1 respectively*/
drop table xyz;

create table xyz (a varchar (15));
insert into xyz values ('Opeyemi');
insert into xyz values ('Opeyemi Owolabi');
select * from xyz;
insert into xyz values ('Opeyemi Jo Owolabi');
# because the size specified is 15, any text longer than 15 characters will return error
drop table xyz;

create table xyz (a date);
#format for date data type is 'YYYY-MM-DD' . you must the the quote mark
insert into xyz values ('1992-10-05');
select * from xyz;
insert into xyz values ('1997-11-07');
drop table xyz;

create table xyz (a time);
#format for time data type is 'hh:mm:ss' . you must the the quote mark
insert into xyz values ('12:11:22');
select * from xyz;
drop table xyz;

create table xyz (a year);
#format for year data type is 'YYYY' . you must the the quote mark
insert into xyz values ('1992-10-05');
#line 59 won't work because it only requires only year value.
drop table xyz;
# NULL value
/*  in a table, when you insert data into other columns but intentionally not into another column
that record is treated as a NULL VALUE*/
select * from employees;

# IS NULL operator
select * from employees where experience = null;
select * from employees where experience is null;
select * from employees where experience is not null;
/* line 68 will show a different output to line 69 because when a column is left empty, 
NULL value is treated as unknown and not a value, which is why you cannot equate or compare
it to any figure or text. */ 

insert into employees values (5, 'Maggi Janet', 10);
insert into employees (name, experience) values ('Ummi Hunni', 3);

# DELETE statement in sql for deleting table records
select * from employees;
# 'delete from table_name where column_name = column_value'
delete from employees where id = 1;
delete from employees where experience = 6;
delete from employees where id = null;
# when you use the delete statment without the where clause, all records in the table will be deleted
# when a column is empty, and you want to delete such record with NULL value, you have to use 'IS NULL' keyword

# UPDATE statement in sql table with SET keyword
# this is used to change existing data in a table to a new data
# UPDATE table_name SET column_name = 'column_new_data WHERE another_column_name = 'column_data'
/* use update statement with the new data you want to input,
use where to pinpoint the row/record you want to change one of its data and 
give value of that row as you have pinpointed */
select * from employees;
update employees set name = 'Brandy Mack' 
where ID = 4;

update employees set id = 6, name = 'Yunus Moses' 
where experience = 3;
# you can update multiple columns at the same time
update employees set experience = 3 
where ID = 4;

update employees 
set experience = 8;
# if the where clause is not provided, all records witll be update to the set data
select * from employees;
update employees set experience = 4 where id = 2;
update employees set experience = 1 where id = 3;
update employees set experience = 7 where id = 4;
update employees set experience = 6 where id = 5;

# RENAME statment and TO keyword
show tables;
rename table employees to emp;
#this will change the table name 

# ALTER statement, ADD keyword, MODIFY column and DROP column
select * from emp;
# you can use ADD keyword to add a new column to a table and remember to add data type
# MODIFY COLUMN keyword is used to change a column data type
# RENAME COLUMN keyword can also be used to change name of a column as well. it will be used with TO keyword
# DROP COLUMN keyword is used to delete a column

describe emp;
alter table emp add dept varchar(15);
alter table emp modify column dept int;
alter table emp modify column dept varchar (12);
alter table emp modify column dept varchar (21);
alter table emp rename column dept to department;
alter table emp drop column department;

#SET AUTOCOMMIT
select * from emp;
update emp set dept = 'Quality' where ID = 6;
insert into emp values (1, 'Maybach Blum', 9, 'Purchase');

