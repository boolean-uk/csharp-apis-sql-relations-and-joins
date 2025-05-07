-- Can't create table named "cast", therefore, "actors"
CREATE TABLE actors(
	id SERIAL PRIMARY KEY,
	filmId INT REFERENCES films(id),
	personId INT REFERENCES people(id)
);

INSERT INTO actors(filmId, personId)
VALUES
	(1, 10),
	(1, 11),
	(1, 12),
	(2, 9),
	(2, 13),
	(3, 14),
	(3, 8),
	(4, 7),
	(5, 6),
	(6, 5),
	(7, 4),
	(8, 3),
	(9, 2),
	(10, 1);
	
SELECT f.title, p.name AS actor
FROM films f
LEFT JOIN actors a ON f.id = a.filmid
LEFT JOIN people p ON a.personid = p.id
