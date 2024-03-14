-- 1 Display all available tables in the Sakila database.
use sakila ; 
show tables  ;

-- 2 Retrieve all the data from the tables actor, film and customer
SELECT * FROM actor ; 
SELECT * FROM film ;
SELECT * FROM customer ; 

-- 3 Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
select title from film  ; 

-- 3.2 List of languages used in films, with the column aliased as language from the language table

 select name as "language" from language ;
 
-- 3.3 List of first names of all employees from the staff table  */
select first_name from staff ;

-- 4 Retrieve unique release years.
SELECT DISTINCT release_year
FROM film ;

-- 5Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT count(store_id)
FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT count(staff_id)
FROM staff;


-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(rental_id) as films_rented  from rental;
select count(*) as films_available from film;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT count(last_name)
FROM actor ;

-- 6 Retrieve the 10 longest films. 
SELECT *
FROM film
ORDER BY length DESC
limit 10;

-- 7 Use filtering techniques in order to: Retrieve all actors with the first name "SCARLETT".
select first_name, last_name from actor where first_name like "SCARLETT" ; 

-- BONUS : Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

select * from film
where title like '%ARMAGEDDON%'
and length > 100;