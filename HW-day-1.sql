--1. How many actors are there with the last name 'Wahlberg'? Expected Output: 2, My Output: 2
select last_name
from actor 
where last_name = 'Wahlberg';



--2. How many payments were made between $3.99 and $5.99?  Expected Output: 5567, My output 4,804
select count(amount)
from payment
where amount between 3.99 and 5.99;



--3. What film does the store have the most of? (search inventory)  Expected Output: Film 200 with 9
select count(film_id), film_id
from inventory
group by film_id 
order by count desc;



--4. How many customers wih the last name 'William'?  Expected Output: 0
select count(last_name)
from customer
where last_name  = 'William'


--5. What store employee (get the id) sold the most rentals?  Expected Output: 1-8040
select staff_id, count(rental_id)
from rental
group by staff_id


--6. How many different district names are there?  Expected Output: 378
select count(district),district
from address
group by district
order by count desc;



--7. What film has the most actors in it? (use film_actor table and get film_id)  Expected Output: film_id 508- 15 actors
select film_id, count(actor_id)
from film_actor
group by film_id 
order by count desc;


--8. From store_id 1, how many customers have a last name ending with 'es'?(use customer table)  Expected Output: 13
select last_name, store_id
from customer
where last_name like '_%es' and store_id = 1;



--9. How many payment amounts(4.99, 5.99, ect.) had a number of rentals above 250 for customers with ids between 380 and 430 (use group by having > 250)  Expected Output: 3
select count(amount) 
from payment
where customer_id between 380 and 430
group by count(amount) > 250;


--10. Whithin the film table, how many rating catagories are there? And what rating has the most movies total?  Expected Output: 5 Ratings, PG-13 has the mosts
select count(rating), rating
from film
group by rating 
order by count desc;



