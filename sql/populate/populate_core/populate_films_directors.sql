
INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = '2001: A Space Odyssey' AND d.name = 'Stanley Kubrick';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'Star Wars: A New Hope' AND d.name = 'George Lucas';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'To Kill A Mockingbird' AND d.name = 'Robert Mulligan';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'Titanic' AND d.name = 'James Cameron';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'Dr Zhivago' AND d.name = 'David Lean';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'El Cid' AND d.name = 'Anthony Mann';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'Voyage to Cythera' AND d.name = 'Theodoros Angelopoulos';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'Soldier of Orange' AND d.name = 'Paul Verhoeven';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'Three Colours: Blue' AND d.name = 'Krzysztof Kieslowski';

INSERT INTO films_directors (fk_film_id, fk_director_id)
SELECT f.film_id, d.director_id
FROM films f, directors d
WHERE f.title = 'Cyrano de Bergerac' AND d.name = 'Jean-Paul Rappeneau';
