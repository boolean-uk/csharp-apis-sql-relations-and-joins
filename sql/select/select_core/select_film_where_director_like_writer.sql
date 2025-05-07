SELECT 
	films.title Title, directors.name Director, writers.name Writer
FROM
	films
	JOIN films_directors ON films.film_id = films_directors.fk_film_id
	JOIN directors ON films_directors.fk_director_id = directors.director_id
	JOIN films_writers ON films_writers.fk_film_id = films.film_id
	JOIN writers ON films_writers.fk_writer_id = writers.writer_id
WHERE 
	directors.name LIKE writers.name