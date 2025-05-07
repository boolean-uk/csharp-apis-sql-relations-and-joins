CREATE TABLE people (
	id serial primary key,
	name varchar(255)
);

INSERT INTO people (name)
VALUES
	('Stanley Kubrick'),
	('George Lucas'),
	('Robert Mulligan'),
	('James Cameron'),
	('David Lean'),
	('Anthony Mann'),
	('Theodoros Angelopoulos'),
	('Paul Verhoeven'),
	('Krzysztof Kieslowski'),
	('Jean-Paul Rappeneau'),
	('Keir Dullea'),
	('Mark Hamill'),
	('Gregory Peck'),
	('Leonardo DiCaprio'),
	('Julie Christie'),
	('Charlton Heston'),
	('Manos Katrakis'),
	('Rutger Hauer'),
	('Juliette Binoche'),
	('Gerard Depardieu'),
	('Arthur C Clarke'),
	('George Lucas'),
	('Harper Lee'),
	('Boris Pasternak'),
	('Frederick Frank'),
	('Erik Hazelhoff Roelfzema'),
	('Edmond Rostand')
;

-- Alter the director tables to use this new table
-- Add new column for IDs
ALTER TABLE director 
ADD COLUMN people_id INTEGER
;

-- Find matching Ids for the existing name
UPDATE director
SET people_id = people.id
FROM people
WHERE director.name = people.name
;

-- remove the old name column
ALTER TABLE director
DROP COLUMN name
;

-- Make people_id a foreign key
ALTER TABLE director 
ADD CONSTRAINT people_id_fk
	FOREIGN KEY(people_id)
		REFERENCES people(id)
;

-- REPEAT FOR STAR
-- Add new column for IDs
ALTER TABLE star 
ADD COLUMN people_id INTEGER
;

-- Find matching Ids for the existing name
UPDATE star
SET people_id = people.id
FROM people
WHERE star.name = people.name
;

-- remove the old name column
ALTER TABLE star
DROP COLUMN name
;

-- Make people_id a foreign key
ALTER TABLE star 
ADD CONSTRAINT people_id_fk
	FOREIGN KEY(people_id)
		REFERENCES people(id)
;


-- REPEAT FOR WRITER
-- Add new column for IDs
ALTER TABLE writer 
ADD COLUMN people_id INTEGER
;

-- Find matching Ids for the existing name
UPDATE writer
SET people_id = people.id
FROM people
WHERE writer.name = people.name
;

-- remove the old name column
ALTER TABLE writer
DROP COLUMN name
;

-- Make people_id a foreign key
ALTER TABLE writer 
ADD CONSTRAINT people_id_fk
	FOREIGN KEY(people_id)
		REFERENCES people(id)
;

-- MIGRATION COMPLETE
-- CHECKING FOR ANY NULL VALUES
SELECT *
FROM director as x 
WHERE x.people_id IS NULL
;

SELECT *
FROM writer as x 
WHERE x.people_id IS NULL
;

SELECT *
FROM star as x 
WHERE x.people_id IS NULL
;

-- WRITER INDEX 9 DID NOT WORK SINCE A SPELLING ERROR IN ASSIGNMENT WAS CORRECTED
/*
UPDATE writer
SET people_id = 9
WHERE writer.id = 9
;
*/

