--Q3 Movies where director, star or writes has a name that contains the letter C. (ILIKE for case insensitive)
SELECT 
film_title AS "Title",
CONCAT (director_first_name, ' ', director_last_name) AS "Director", 
CONCAT (star_first_name, ' ', star_last_name) AS "Star",
CONCAT (writer_first_name, ' ', writer_last_name) AS "Writer"
FROM film
INNER JOIN director ON film_fk_director = director_id
INNER JOIN star ON film_fk_star = star_id
INNER JOIN writer ON film_fk_writer = writer_id
WHERE 
director_first_name ILIKE '%C%' OR 
director_last_name ILIKE '%C%' OR 
star_first_name ILIKE '%C%' OR 
star_last_name ILIKE '%C%' OR 
writer_first_name ILIKE '%C%' OR 
writer_last_name ILIKE '%C%';