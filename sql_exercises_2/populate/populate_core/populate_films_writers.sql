INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = '2001: A Space Odyssey' AND w.name = 'Arthur C Clarke';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'Star Wars: A New Hope' AND w.name = 'George Lucas';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'To Kill A Mockingbird' AND w.name = 'Harper Lee';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'Titanic' AND w.name = 'James Cameron';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'Dr Zhivago' AND w.name = 'Boris Pasternak';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'El Cid' AND w.name = 'Frederick Frank';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'Voyage to Cythera' AND w.name = 'Theodoros Angelopoulos';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'Soldier of Orange' AND w.name = 'Erik Hazelhoff Roelfzema';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'Three Colours: Blue' AND w.name = 'Krzysztof Kieslowsk';

INSERT INTO films_writers (fk_film_id, fk_writer_id)
SELECT f.film_id, w.writer_id
FROM films f, writers w
WHERE f.title = 'Cyrano de Bergerac' AND w.name = 'Edmond Rostand';
