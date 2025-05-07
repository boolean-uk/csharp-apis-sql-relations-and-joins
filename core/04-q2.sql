--Show the title, director and star name for all films
SELECT 
t1.film_title AS "Film Title", 
CONCAT(t2.director_first_name, ' ', t2.director_last_name) AS "Director",
CONCAT(t3.star_first_name, ' ', t3.star_last_name) AS "Star"
FROM film t1
INNER JOIN director t2 ON t1.film_fk_director = t2.director_id
INNER JOIN star t3 ON t1.film_fk_star = t3.star_id;