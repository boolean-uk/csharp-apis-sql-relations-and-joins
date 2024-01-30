--Show only those films where the writer and the director are the same person
SELECT t1.film_title AS "Film Title",
CONCAT(t2.director_first_name, ' ', t2.director_last_name)
FROM film t1
INNER JOIN director t2
ON t1.film_fk_director = t2.director_id
INNER JOIN writer t3
ON t1.film_fk_writer = t3.writer_id
WHERE t2.director_first_name = t3.writer_first_name AND t2.director_last_name = t3.writer_last_name;