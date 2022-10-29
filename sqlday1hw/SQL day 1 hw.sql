--Question 1 How many actors are there with the last name ‘Wahlberg’?
select count (last_name) 
from actor
where last_name like 'Wahlberg'

--Question 2 How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99; 

-Question 3 What film does the store have the most of? (search in inventory)
SELECT film_id,
COUNT(film_id) AS value_occurrence 
FROM     inventory
GROUP BY film_id
ORDER BY value_occurrence desc
LIMIT    1;

select count (film_id) 
from inventory
where film_id = '200' 
---I can only find 8 as the most 

--Question 4 How many customers have the last name ‘William’?
select count (last_name) 
from customer
where last_name like 'William'

--Question 5 What store employee (get the id) sold the most rentals?
SELECT staff_id,
COUNT(staff_id) AS value_occurrence 
FROM     rental
GROUP BY staff_id
ORDER BY value_occurrence desc
LIMIT    1;

--Question 6 How many different district names are there?
SELECT COUNT(distinct district) FROM address;


--Question 7 What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id,
COUNT(film_id) AS value_occurrence 
FROM     film_actor
GROUP BY film_id
ORDER BY value_occurrence desc
LIMIT    1;

--Question 8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT count(last_name)
from customer
WHERE last_name LIKE '%es' and store_id = '1' 

--Question 9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)


select COUNT(amount)
from payment 
where customer_id between 380 and 430
group by amount
having COUNT (amount) > 250


--Question 10 Within the film table, how many rating categories are there? And what rating has the most movies total?

select COUNT(distinct rating)
from film;

SELECT rating,
COUNT(rating) AS value_occurrence 
FROM     film
GROUP BY rating
ORDER BY value_occurrence desc
limit 1;

select COUNT(amount), customer_id
from payment 
where customer_id between 380 and 430
group by customer_id
having COUNT () > 250
ORDER BY customer_id DESC;
