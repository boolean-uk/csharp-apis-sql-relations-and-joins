--Q1: COMPLETE, MONOLITHIC TABLE COPY
SELECT 
film_id AS "ID",
film_title AS "Title",
CONCAT (director_first_name, ' ', director_last_name) AS "Director", 
director_country AS "Director Country",
CONCAT (star_first_name, ' ', star_last_name) AS "Star",
star_dob AS "Star DOB",
CONCAT (writer_first_name, ' ', writer_last_name) AS "Writer",
writer_email AS "Writer Email",
film_release_year AS "Year",
film_genre AS "Genre",
film_score AS "Film Rating"
FROM film
INNER JOIN director ON film_fk_director = director_id
INNER JOIN star ON film_fk_star = star_id
INNER JOIN writer ON film_fk_writer = writer_id;