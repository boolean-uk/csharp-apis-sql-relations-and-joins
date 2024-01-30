--Show the title and director name for all films
SELECT film_title AS "Film Title", 
       CONCAT(person_first_name, ' ', person_last_name) AS "Director"
FROM film
JOIN director ON film_fk_director = director_id
JOIN person ON director_fk_person = person_id;