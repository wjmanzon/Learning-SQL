USE sakila;
SHOW TABLES;
DESCRIBE film;
SELECT * FROM film;

-- all rows, selected columns
SELECT rating, title, length 
FROM film;

-- distinct listing of ratings
SELECT DISTINCT rating 
FROM film
ORDER BY rating;

--
SELECT title, rating, length 
FROM film
WHERE rating = "R";

-- one OR more criteria
SELECT title, rating, length 
FROM film
WHERE rating = "R" OR length < 75;

-- one AND more criteria
SELECT title, rating, length 
FROM film
WHERE rating = "R" AND length < 75;

-- shortcut for OR
SELECT title, rating, length 
FROM film
WHERE rating IN ("R", "NC-17");

SELECT title, rating, length 
FROM film
WHERE rating NOT IN ("R", "NC-17");

-- sorting ascending
SELECT title, rating, length 
FROM film
WHERE rating NOT IN ("R", "NC-17")
ORDER BY length;

-- sorting descending
SELECT title, rating, length 
FROM film
WHERE rating NOT IN ("R", "NC-17")
ORDER BY length DESC;

SELECT title, rating, length 
FROM film
WHERE rating NOT IN ("R", "NC-17")
ORDER BY length DESC
LIMIT 5;

-- wildcards
-- % looks for groups of characters
--  _ looks for a single character

SELECT title, rating, length
FROM film
WHERE rating LIKE "P%";

SELECT title, rating, length
FROM film
WHERE rating LIKE "%P";

SELECT title, rating, length
FROM film
WHERE rating LIKE "P_";

-----------------------------------------------------
-----------------------------------------------------
-- STATISTICS AND MATH FUNCTIONS IN SQL

USE sakila;
SHOW TABLES;

-- how many in result meet a specific criteria
SELECT COUNT(*)
FROM film
WHERE rating ="R";

-- aggregate by number of films each category
SELECT rating, count(*)
FROM film
GROUP BY rating
ORDER BY rating;

-- max of selected criteria
SELECT max(length)
FROM film;

-- average of selected criteria, std, stdev, stdev_pop
SELECT avg(length) AS Mean, stddev_samp(length) AS STD
FROM film
WHERE rating = "R";

-- average length by rating
SELECT rating, round(avg(length),0) AS Mean, round(stddev_samp(length),1) AS STD
FROM film
GROUP BY rating
ORDER BY Mean DESC;


-- sum of payments
SELECT sum(amount)
FROM payment;


-- other common mathematical functions
SELECT rand();

SELECT sqrt();

SELECT exp(1);

-------------------------------------------------
-------------------------------------------------
-- INNER JOINS AND OUTER JOINS

USE Sakila;

SELECT first_name, last_name, phone
FROM customer, address
WHERE address.address_id = customer.address_id
ORDER BY last_name;

SELECT concat(first_name, " ", "last_name") AS actor_name, count(title)
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
GROUP BY actor_name
ORDER BY count(title) DESC;

