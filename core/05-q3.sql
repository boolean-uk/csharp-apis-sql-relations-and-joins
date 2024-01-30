--Show the title of films where the director is from the USA
SELECT t1.film_title AS "Film title" , t2.director_country AS "Director country"
FROM film t1
INNER JOIN director t2 
ON t1.film_fk_director = t2.director_id
WHERE t2.director_country = 'USA';