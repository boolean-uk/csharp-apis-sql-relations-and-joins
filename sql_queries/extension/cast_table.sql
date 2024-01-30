-- Create cast table
CREATE TABLE "cast" (
	entry_id serial primary Key,
	movie_id integer,
	people_id integer,	
	CONSTRAINT movie_id_fk
		FOREIGN KEY(movie_id)
			REFERENCES movie(id),
	CONSTRAINT people_id_fk
		FOREIGN KEY(people_id)
			REFERENCES people(id)
);

-- Need to add some other people
INSERT INTO people (name)
VALUES 
 	-- odyssey
	('Daniel Richter'),
	('William Sylvest'),
	('Sean Sullivan'),
	('Gary Lockwood'),
	-- a new hope
	('Alec Guinness'), 
	('Peter Cushing'),
	('Phil Brown'),
	-- mockinbird
	('John Megna'),
	('Brock Peters'),
	('Paul Fix'),
	('Ruth White'),
	-- titanic
	('David Warner'),
	('Bernard Hill'),
	('Victor Garber'),
	('Bill Paxton'),
	-- zhivago
	('Geraldine Chaplin'),
	('Rod Steiger'),
	('Ralph Richardson'),
	-- cid
	('John Fraser'),
	('Gary Raymond'),
	('Massimo Serato'),
	('Hurd Hatfield'),
	-- cythera
	('Giorgos Nezos'),
	('Giulio Brogi'),
	('Dora Volanaki'),
	('Dionysis Papagiannopoulos'),
	-- orange
	('Derek de Lint'),
	('Lex van Delden'),
	('Susan Penhaligon'),
	('Edward Fox'),
	-- blue
	('Florence Pernel'),
	('Julie Delpy'),
	('Claude Duneton'),
	('Hugues Quester'),
	-- bergerac
	('Philippe Morier-Genoud'),
	('Alain Rimoux'),
	('Anatola Delalande')	
;




-- Adding people to move casts
INSERT INTO "cast" (movie_id, people_id)
VALUES 
	(1,28),
	(1,29),
	(1,30),
	(1,31),
	--new hope
	(2,32),
	(2,33),
	(2,34),
	--mockingbird
	(3,35),
	(3,36),
	(3,37),
	(3,38),
	-- titanic
	(4,39),
	(4,40),
	(4,41),
	(4,42),
	-- zhivago
	(5,43),
	(5,44),
	(5,45), 
	(5,32), -- alec guiness
	-- cid
	(6,46),
	(6,47),
	(6,48),
	(6,49),
	-- cythera
	(7,50),
	(7,51),
	(7,52),
	(7,53),
	-- orange
	(8,54),
	(8,55),
	(8,56),
	(8,57),
	-- blue
	(9,58),
	(9,59),
	(9,60),
	(9,61),
	-- bergerac
	(10,62),
	(10,63),
	(10,64)
;

-- WANT TO ALSO ADD THE STAR TO THE LIST
-- Find the people ID and movie ID for each
SELECT s.id, p.name, m.id, m.title 
FROM movie as m 
	JOIN star_movie as sm ON m.id = sm.movie_id
		JOIN star as s ON sm.star_id = s.id 
			JOIN people as p ON p.id = s.people_id
;


INSERT INTO "cast" (movie_id, star_id)
VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4), 
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8), 
	(9, 9),
	(10, 10)
;