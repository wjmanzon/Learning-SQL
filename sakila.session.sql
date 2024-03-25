USE sakila;
SHOW TABLES;
DESCRIBE film;
SELECT * FROM film;

--all rows, selected columns
SELECT rating, title, length 
FROM film;

--distinct listing of ratings
SELECT DISTINCT rating 
FROM film
ORDER BY rating;