# using ALIASES in place of table column name
select * from film;
select title, release_year, rating from film;
#to use aliases, AS keyword might be used after the column name, and the aliase will be specified
select title as movie_name, release_year as year, rating as genre from film;
select title movie_name, release_year year, rating genre from film;
#for code clearity, use AS keyword
select title as 'movie Name', release_year as year, rating as genre from film;
select title, release_year, rating from film;

#LIMIT keywords. used to improve performance by selecting a specified number of records to display
select * from film;
select * from film limit 5;
select * from film where rating = 'pg';
select * from film where rating = 'pg' limit 10;
select * from film limit 5, 7;
# line 16 is to display 7 records, after the first 5 record in the table selected. 
# i.e. the first 5 records will not be displayed

#Breaking single SQL statement into multiple lines
select * from customer;
select customer_id, store_id, first_name, last_name, email from customer where store_id = 1 limit 5;
select customer_id, store_id, first_name, last_name, email 
from customer 
where store_id = 1 
limit 5;
#both statment in line 22 and line  23 to 26 will give thesame output.

# BUILT-IN FUNCTIONS
#String, Numeric, Date & Time and Aggregate functions
#String (upper, lower, length, instr, substr
# UPPER/LOWER built-in function
select upper ('opeyemi');
select * from country;
select country, upper (country) as con from country;
select country, upper (country), upper (country) as COUNTRY, LOWER (country) as country from country;
#when you change the case of a column, the case name will be attached to the column name, so it is 
#good to use aliases along with it 

#LENGTH built-in function
select length ('Opeyemi');
select title from film;
select title, length (title) as title_name_size from film;
# if the string is more than one in a record, the space will be counted as part of the length.
select * from film where length(title) <= 10 limit 10;

#INSTR built-in function
#purpose is to find position of the given text in a specified column
select title from film;
select title, instr(title, 'a') as Position from film;
# if there are more than one of same char, only the first will be counted and displayed
select title, instr(title, 'ar') as Position from film where instr(title, 'ar') >0;

#SUBSTR () built in functions. substring function
select * from city;
select city, substr(city,2,3) as Position_2 from city;
# substr () will help to know what characters are there from a particular position in a text
select substr('opeyemi', 2,4);
# 2 in line 58 is the starting positon of the result text
# 4 in line 58 is how many characters you want to return.
# if only one number is provided, it will be taken as the starting position and every other characters from that position to the last will be returned in the result
select substr('opeyemi', -2,3);
# -2 in line 62 is the starting positon of the result text, counting from the last character
# 4 in line 62 is how many characters you want to return,  counting from the starting position specified

#CONCAT function. Purpose is to add two or more columns together
select * from actor;
select first_name, last_name, concat(first_name, ' ', last_name) as full_name from actor;
select first_name, last_name, concat('My full name is' ' ', lower(first_name), ' ', lower(last_name)) as full_name from actor;

#TRIM () built-in function
# it is used to remove empty blank spaces before and after a string
select 'Opeyemi' as first_name;
select length('opeyemi') as first_name;
select length(trim('  opeyemi ')) as first_name;
select * from actor;
select first_name, last_name, length(first_name) as first_length, length(last_name) as last_length from actor;
select length(trim('  opeyemi ') as first_name;
select * from actor where actor_id = 200;
select count(*) from actor;