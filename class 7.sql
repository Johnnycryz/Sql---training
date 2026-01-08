# JOINS Statement
# JOINS are used to join different tables
/* RULE:. 1. The table to be joined together should have a common column
2. The conditonal clause is not WHERE but ON
3. The common column will come after the ON clause
TYPES: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN, SELF JOIN */

SELECT * from dept;
alter table dept rename column Id to dept_Id;
select * from head_count;
alter table head_count rename column Id to dept_Id;
insert into dept values (1, 'Sales', 'Brandon Jones'), (2, 'Quality', 'Maggie Manes'),
(3, 'Purchase', 'John Jason');
insert into dept values (1, 'Purchase', 'Blemy Jenson');
insert into dept values (4, 'Admin', 'Mensah Hush');
update dept set dept_id = 3 where sup_name = 'Blemy Jenson';

select * from dept inner join head_count
on dept.dept_id=head_count.dept_id;
# with INNER JOIN, the common/intersection record based on the similar column will be retrieved

select * from dept left join head_count
on dept.dept_id=head_count.dept_id;
/* with LEFT JOIN, all the records from the table on the left side of the code will be retrieved 
and the record inside the tabel on the right side will only come if the common column has record that match
 those record from the left that are not available on the right side, will have null values 
 as the output on the right */
 
 select * from dept right join head_count
on dept.dept_id=head_count.dept_id;
# this is the opposite of left join

# FULL JOIN is not supported in MYSQL, it is supported in ORACLE
# FULL JOIN is to retrieve all records in both tables

# SELF JOIN is when you join only one table by using different column that have same record
# you can do that by giving the same table different aliases with the column

/* SUB QUERY
This is a query inside another query
When an outer query has another inner query/nested query/sub query
the output of the inner query is the input of the outer query
the inner query is what will run first before the outer query
- TYPES/: Single Row and Multi Row Sub query
- when you open a bracket and put a query inside, that query becomes a sub query for an outer query */
use world;
select * from country;
select max(Population) from country;
# if i want to make line 48 a sub query
select * from country where population = (select max(Population) from country);
select * from country where population = (select min(Population) from country);
/* the result for line 51 shows multiple row because population for all the countries
is zero and that is the minimum population in the record */

/* IN OPERATOR
Without IN operator, we can only give one value in the WHERE clause condition */

select * from country;
select * from country where continent = 'Europe';
# to use IN operator
select * from country  where continent  in ('Europe', 'Asia');
# you need to replace = with IN operator and put all the condition in a bracket
select * from country  where continent  not in ('Europe', 'Asia');
# you can do the opposite of line 61 by adding NOT along with IN operator