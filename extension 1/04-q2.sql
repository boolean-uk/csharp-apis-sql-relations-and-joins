--Show the title, director and star name for all films
SELECT t1.film_title AS "Film Title",
       CONCAT(t4.person_first_name, ' ', t4.person_last_name) AS "Director",
       CONCAT(t5.person_first_name, ' ', t5.person_last_name) AS "Star"
FROM film t1
JOIN director t2 ON t1.film_fk_director = t2.director_id
JOIN star t3 ON t1.film_fk_star = t3.star_id
JOIN person t4 ON t2.director_fk_person = t4.person_id
JOIN person t5 ON t3.star_fk_person = t5.person_id;