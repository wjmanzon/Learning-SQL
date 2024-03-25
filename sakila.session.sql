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