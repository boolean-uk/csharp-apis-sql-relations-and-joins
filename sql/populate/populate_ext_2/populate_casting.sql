INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = '2001: A Space Odyssey' AND s.name IN ('Stanley Kubrick', 'Keir Dullea', 'Arthur C Clarke');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'Star Wars: A New Hope' AND s.name IN ('George Lucas', 'Mark Hamill');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'To Kill A Mockingbird' AND s.name IN ('Robert Mulligan', 'Harper Lee', 'Gregory Peck');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'Titanic' AND s.name IN ('James Cameron', 'Leonardo DiCaprio');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'Dr Zhivago' AND s.name IN ('David Lean', 'Julie Christie', 'Boris Pasternak');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'El Cid' AND s.name IN ('Anthony Mann', 'Charlton Heston', 'Rutger Hauer');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'Voyage to Cythera' AND s.name IN ('Theodoros Angelopoulos', 'Manos Katrakis', 'Jean-Paul Rappeneau');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'Soldier of Orange' AND s.name IN ('Paul Verhoeven', 'Rutger Hauer', 'Erik Hazelhoff Roelfzema');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'Three Colours: Blue' AND s.name IN ('Krzysztof Kieslowski', 'Juliette Binoche', 'Gerard Depardieu');

INSERT INTO casting (fk_film_id, fk_person_id)
SELECT f.film_id, s.person_id
FROM films f, person s
WHERE f.title = 'Cyrano de Bergerac' AND s.name IN ('Edmond Rostand', 'Gerard Depardieu', 'Frederick Frank');
