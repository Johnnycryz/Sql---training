# ABS () built-in function
# this is used to retrieve an absolute (which is a +ve value) value eiter +ve or -ve number
select abs(9);
select abs(-9);

#  MOD() function
#this will return the remainder value of the numeric data of specified column
# i.e. you give two values with mod (9,2). divide 9 by 2 and only display the remainder as result
select * from film;
select rental_duration from film;
select rental_duration, mod(rental_duration, 2) as Mod_duration from film;

# GREATEST() and ,LEAST() function
#this can be appli,d to both numeric and text data following 1,2,3 and a,b,c order for GREATEST () and vice versa for LEAST,
select greatest (8.68,485,256);
select greatest('opeyemi', 'john', 'tola');

# TRUNCATE () FUnction
# this return the numerical value with the specified number of decimal places
select 234.834;
select truncate(234.834, 1);
select truncate(234.834, -1);
#if the number after the comma is > 1, that is the number of decimal place to display
#if the number after the comma is 0, no decimal place to display
#if the number after the comma is < 1, number before decimal points will be turned to zero starting from the last number and according to -ve number specified
	
# POWER & SQRT () FUNCTION
select power(3,2);
# 3 in line 28 is the number you are raising its power
# 2 is how many power you are raising. so it means 3 raised to the power of 2
select sqrt(4);
#this find square root of the given number or data of specified column
select * from film;
select rental_duration from film;
select rental_duration, 
truncate(sqrt(rental_duration), 2) 
as sqrt_duration  from film;

# DATE & TIME FUNCTIONS
select current_date(), current_time();
select curdate(), curtime();
select now(), sysdate();
select * from actor;
select *, minute(last_update) from actor;
select * from payment;
select *  from payment where month(payment_date) = 6;
select * , month(payment_date) from payment where month(payment_date) = 6;
select * , 
monthname(payment_date) from payment 
where month(payment_date) > 6
order by month(payment_date);

# Aggregate functions (avg, max, min, count)
select * from payment;
select min(amount), max(amount), avg(amount), sum(amount), count(amount) from payment;
# ensure when you type the function, there is no space before the open bracket

# ARITHMETIC OPERATORS (+, -, *, /, %)
select 5+4 as addition,
5-4 as subtraction,
5*4 as multiplication,
5/4 as division,
truncate(5/4, 2) as division_2,
5%4 as percentile,
mod(5,3) as moda;

select * from payment;
select amount, amount * 2 as double_amount from payment;

describe actor;