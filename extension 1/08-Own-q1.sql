--Q1: COMPLETE, MONOLITHIC TABLE COPY
SELECT 
film_id AS "ID",
film_title AS "Title",
CONCAT (pdir.person_first_name, ' ', pdir.person_last_name) AS "Director", 
director_country AS "Director Country",
CONCAT (psta.person_first_name, ' ', psta.person_last_name) AS "Star",
star_dob AS "Star DOB",
CONCAT (pwri.person_first_name, ' ', pwri.person_last_name) AS "Writer",
writer_email AS "Writer Email",
film_release_year AS "Year",
film_genre AS "Genre",
film_score AS "Film Rating"
FROM film
JOIN director ON film_fk_director = director_id
JOIN star ON film_fk_star = star_id
JOIN writer ON film_fk_writer = writer_id
JOIN person pdir ON pdir.person_id = director.director_fk_person
JOIN person psta ON psta.person_id = star.star_fk_person
JOIN person pwri ON pwri.person_id = writer.writer_fk_person;