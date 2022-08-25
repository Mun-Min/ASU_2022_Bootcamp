SELECT * FROM actor LIMIT 100;
SELECT * FROM address LIMIT 100;
SELECT * FROM city LIMIT 100;
SELECT * FROM country LIMIT 100;
SELECT * FROM customer LIMIT 100;
SELECT * FROM customer_list LIMIT 100;
SELECT * FROM film LIMIT 1000;
SELECT * FROM film_actor LIMIT 100;
SELECT * FROM inventory LIMIT 100;
SELECT * FROM rental LIMIT 100;
SELECT * FROM staff LIMIT 1000;
SELECT * FROM store LIMIT 100;
SELECT * FROM payment LIMIT 1000

-- Count the amount of film_id's in film table
SELECT
	COUNT(film_id) AS "Total Films"
FROM
	film;
	
-- Group by the number of films by rating 
SELECT rating,
	COUNT(film_id) AS "Total Films"
FROM
	film
GROUP BY
    rating;
	
-- Select the average rental duration 
SELECT AVG(rental_duration) as "Average Rental Duration" FROM film;

-- Find the films with the min rental rate
SELECT rental_duration, min(rental_rate) as "Minimum Rental Rate" FROM film 
GROUP BY rental_duration; 

-- Find the films with the max rental rate
SELECT rental_duration, max(rental_rate) as "Maximum Rental Rate" FROM film 
GROUP BY rental_duration; 

SELECT rating, COUNT(film_id) as "Total Films" FROM film 
GROUP BY rating
HAVING COUNT(film_id) > 195; 

------------------------------------------------------------------------------------------------------------------
									-- Gregarious Aggregates Activity --
-- What is the average payment amount? 
SELECT AVG(amount) as "Average Payment Amount" FROM payment;

-- What is the total payment amount? 
SELECT
	COUNT(amount) AS "Total Payment Amount"
FROM
	payment;

-- What is the minimum payment amount? 
SELECT rental_id, min(amount) as "Minimum Payment Amount" FROM payment
GROUP BY rental_id; 


-- What is the maximum payment amount?
SELECT customer_id, max(amount) as "Maximum Payment Amount" FROM payment
GROUP BY customer_id; 

-- How many customers has each staff serviced?
SELECT COUNT(customer_id) as "# Customers", staff_id FROM payment
GROUP BY staff_id;

-- Which customers have made over 40 payments?
SELECT customer_id, COUNT(payment_id) as "Payments > 40" FROM payment 
GROUP BY customer_id
HAVING COUNT(payment_id) > 40; 
------------------------------------------------------------------------------------------------------------------
-- Average lenght of film 
SELECT film_id, AVG(length) as "Length of Film"
FROM film 
GROUP BY film_id
ORDER BY AVG(length)
LIMIT 10; 

-- Find the count of payments per customer in descending order
SELECT customer_id, COUNT(amount) as "Count of Payments"
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;

-- Find the top 5 customers who have spent the most money.
SELECT customer_id, SUM(amount) AS total_payment_amount
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- Find the bottom 5 customers who have spent the least money.
SELECT customer_id, SUM(amount) AS total_payment_amount
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) ASC
LIMIT 5;

-- Find the top 10 customers with the highest average payment rounded to two decimal places
SELECT customer_id, ROUND(AVG(amount), 2) AS "average_payment_amount"
FROM payment
GROUP BY customer_id
ORDER BY AVG(amount) DESC
LIMIT 10;

-- BONUS 1: Find the staff names and their number of customers serviced in descending order.
SELECT first_name, last_name, COUNT(customer_id) AS "customer_count"
FROM payment AS a
JOIN staff AS b ON a.staff_id = b.staff_id
GROUP BY first_name, last_name
ORDER BY COUNT(customer_id) DESC;


-- BONUS 2: cast the payment_date as a DATE datatype to group by day (rather than date and time). 
-- 			Determine the count of payments per day in descending order
SELECT CAST(payment_date AS DATE) as payment_date, COUNT(*)
FROM payment
GROUP BY CAST(payment_date AS DATE)
ORDER BY COUNT(*) DESC;

------------------------------------------------------------------------------------------------------------------
SELECT film_id
FROM film 
WHERE title = 'EARLY HOME';

SELECT * FROM inventory 
WHERE film_id = 268; 

SELECT i.inventory_id, i.film_id, i.store_id, i.last_update
FROM inventory as i 
JOIN film as f 
ON i.film_id = f.film_id
WHERE f.title = 'EARLY HOME';

CREATE VIEW Films_Information AS
SELECT * FROM inventory
WHERE film_id IN 
	(
	 SELECT film_id
	 FROM film
	 WHERE title = 'EARLY HOME');

SELECT * FROM Films_Information; 

DROP VIEW Films_Information;

------------------------------------------------------------------------------------------------------------------

-- Find the customer first and last names of those who have made payments
SELECT first_name, last_name
FROM customer
WHERE customer_id IN
  (
  SELECT customer_id
  FROM payment
  );

-- Find the staff email addresses of those who have helped customers make payments
SELECT email
FROM staff
WHERE staff_id IN
  (
  SELECT staff_id
  FROM payment
  );

-- Use the payment, rental, inventory, and film tables to find the titles of all films that have been rented out and paid for
SELECT title
FROM film
WHERE film_id IN
  (
  SELECT film_id
  FROM inventory
  WHERE inventory_id IN
    (
    SELECT inventory_id
    FROM rental
    WHERE rental_id IN
      (
      SELECT rental_id
      FROM payment
      )
    )
  );

