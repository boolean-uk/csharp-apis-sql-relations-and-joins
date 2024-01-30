--Show the title and director name for all films
SELECT film_title AS "Film Title", director_first_name || ' ' || director_last_name AS "Director" 
FROM film 
INNER JOIN director ON film_fk_director = director_id;