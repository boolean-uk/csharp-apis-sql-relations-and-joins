--Show directors and film titles for films with a score of 8 or higher
SELECT CONCAT(director_first_name, ' ', director_last_name) AS "Director", 
film_title AS "Film Title",
film_score AS "Film Rating"
FROM film
INNER JOIN director ON film_fk_director = director_id
WHERE film_score <= 8
ORDER BY film_score DESC;