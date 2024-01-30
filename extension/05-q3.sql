--Show the title of films where the director is from the USA
SELECT film_title AS "Film title" , director_country AS "Director country"
FROM film
JOIN director ON film_fk_director = director_id
WHERE director_country = 'USA';