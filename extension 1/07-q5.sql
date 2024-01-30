--Show directors and film titles for films with a score of 8 or higher
SELECT CONCAT(person_first_name, ' ', person_last_name) AS "Director",
       film_title AS "Film Title",
       film_score AS "Film Rating"
FROM film
JOIN director ON film_fk_director = director_id
JOIN person ON person_id = director_fk_person
WHERE film_score >= 8
ORDER BY film_score DESC;