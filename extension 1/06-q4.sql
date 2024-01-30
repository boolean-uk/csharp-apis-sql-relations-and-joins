--Show only those films where the writer and the director are the same person
SELECT film_title AS "Film Title",
       CONCAT(person_first_name, ' ', person_last_name) AS "Director/Writer"
FROM film
JOIN director ON film_fk_director = director_id
JOIN writer ON film_fk_writer = writer_id
JOIN person ON director_fk_person = person_id
WHERE person_id = writer_fk_person;