INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = '2001: A Space Odyssey' AND s.name = 'Keir Dullea';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'Star Wars: A New Hope' AND s.name = 'Mark Hamill';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'To Kill A Mockingbird' AND s.name = 'Gregory Peck';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'Titanic' AND s.name = 'Leonardo DiCaprio';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'Dr Zhivago' AND s.name = 'Julie Christie';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'El Cid' AND s.name = 'Charlton Heston';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'Voyage to Cythera' AND s.name = 'Manos Katrakis';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'Soldier of Orange' AND s.name = 'Rutger Hauer';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'Three Colours: Blue' AND s.name = 'Juliette Binoche';

INSERT INTO films_stars (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f
JOIN person s ON f.title = 'Cyrano de Bergerac' AND s.name = 'Gerard Depardieu';