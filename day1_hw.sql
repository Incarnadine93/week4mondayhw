-- 1. How many actors are there with the last name ‘Wahlberg’?

-- 2
SELECT COUNT(last_name)
from actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?

--0
SELECT COUNT(payment)
from payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory) `` NOT DONE

SELECT film_id, count(inventory_id)
from inventory
GROUP BY film_id
order by count(inventory_id) DESC;

-- 4. How many customers have the last name ‘William’?

--0
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals? -- NOT DONE

SELECT staff_id COUNT(last_name)
from actor
WHERE last_name = 'Wahlberg';

-- 6. How many different district names are there?

--603
SELECT count(district)
FROM address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

--Kissing Dolls
SELECT film_id, count(actor_id)
from film_actor
GROUP BY film_id
order by count(actor_id) DESC;

SELECT film_id, title
from film
WHERE film_id = '501';

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

--21
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250) ALSO NOT DONE

SELECT amount, customer_id
from payment
where customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING amount > 250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

--PG-13
SELECT rating, count(title)
from film
GROUP BY rating
order by count(title) DESC;

