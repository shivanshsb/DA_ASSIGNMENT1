-- primary key and foreign key in mavenmovies 
use mavenmovies ;
-- a data point or coloum which can uniqley refer to the complete entery in a table  that is the column we can say as primary key or
-- a primary key in table is a unique key which can define a column uniqley ...for example in shool database  there is unique id for every student so that id can said as primary key. 
-- primary key cant be null
-- a foreign key is  a refrene value from another table whih can get us detail of other table. It is  key  used to connect two tables or more.


-- 2- list detail of all actor 
select * from actor;
-- 3-- List all customer information from DB. 
select * from customer;
-- 4 List different countries.
select distinct(country) from country;-- we use distinct key  word for different country
-- 5 Display all active customers.
select * from customer where active=1;
-- 6 List of all rental IDs for customer with ID 1.
select rental_id from rental a where customer_id = 1 ;
-- or 
select customer_id ,rental_id from rental where customer_id=1;
-- 7 Display all the films whose rental duration is greater than 5 . 
select* from film;
select title ,rental_duration from film where rental_duration > 5;


-- 8 List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(*)  replacement_cost from film  where replacement_cost between 15 and 20 ;
select count(*) as total_film from film where replacement_cost between 15 and 20 ; -- using as  
-- 9--Find the number of films whose rental rate is less than $1. 
select * from film where rental_rate < 1.00 ;


--  10 Display the count of unique first names of actors 
select * from actor ;
select count(distinct first_name) as first_name_count from actor;


-- 11 Display the first 10 records from the customer table
select * from customer limit 10;
-- 


-- 12 Display the first 3 records from the customer table whose first name starts with ‘b 
select first_name from customer where first_name like "b%" limit 3;


-- 13 Display the names of the first 5 movies which are rated as ‘G’. 
select * from film where rating= 'g' limit 5;



-- 14 Find all customers whose first name starts with "a".
select * from customer where first_name like "a%" ;


-- 15 Find all customers whose first name ends with "a".
select * from customer where first_name like "%a" ; -- willl give all detail 
 -- or 
select first_name from customer where first_name like "%a";-- will give only specific detail

-- 16 display the list of first 4 cities which start and end with ‘a’ . 
select * from city;
select city from city where city like "a%a";

-- 17 Find all customers whose first name have "NI" in any position.

select first_name,last_name from customer where first_name like "%NI%" ; 



-- 18 Find all customers whose first name have "r" in the second position
select * from customer where first_name like "_r%";


-- 19 Find all customers whose first name starts with "a" and are at least 5 characters in length. 
select first_name from customer where first_name like "a%" and length(first_name)>=5;



-- 20 Find all customers whose first name starts with "a" and ends with "o".
select first_name from customer where first_name like "a%o";


-- 21Get the films with pg and pg-13 rating using IN operator. 
 select title,rating from film where rating in('pg', 'pg-13');
 
 

-- 22 Get the films with length between 50 to 100 using between operator. 
 
 select title, length from film where length between 50 and 100;
 
 -- 23Get the top 50 actors using limit operator. 
 select first_name , last_name from actor limit 50;
 
 
 -- 24 Get the distinct film ids from inventory table.
 select distinct(film_id) from inventory ;
 
 -- thank you 




