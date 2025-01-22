


INSERT INTO persons
(name)
VALUES
-- Stars - Persons with registered birthdays
('Keir Dullea'),       -- 1
('Mark Hamill'),       -- 2
('Gregory Peck'),      -- 3
('Leonardo DiCaprio'), -- 4
('Julie Christie'),    -- 5
('Charlton Heston'),   -- 6
('Manos Katrakis'),    -- 7
('Rutger Hauer'),      -- 8
('Juliette Binoche'),  -- 9
('Gerard Depardieu'),  -- 10
-- Directors  - persons with home contries
('Stanley Kubrick'),        -- 11
('George Lucas'),           -- 12
('Robert Mulligan'),        -- 13
('James Cameron'),          -- 14
('David Lean'),             -- 15
('Anthony Mann'),           -- 16
('Theodoros Angelopoulos'), -- 17
('Paul Verhoeven'),         -- 18
('Krzysztof Kieslowski'),   -- 19
('Jean-Paul Rappeneau'),    -- 20
-- Writers - persons with email adresses
('Arthur C Clarke'),          -- 21
('George Lucas'),             -- 22
('Harper Lee'),               -- 23
('James Cameron'),            -- 24
('Boris Pasternak'),          -- 25
('Frederick Frank'),          -- 26
('Theodoros Angelopoulos'),   -- 27
('Erik Hazelhoff Roelfzema'), -- 28
('Krzysztof Kieslowski'),     -- 29
('Edmond Rostand');           -- 30

INSERT INTO countries
(countryname)
VALUES
('USA'),           -- 11, 1
--('USA'),         -- 12, 1
--('USA'),         -- 13, 1
--('USA'),         -- 16, 1
('Canada'),        -- 14, 2
('UK'),            -- 15, 3
('Greece'),        -- 17, 4
('Netherlands'),   -- 18, 5
('Poland'),        -- 19, 6
('France');        -- 20, 7

INSERT INTO genres
(genre_name)
VALUES
('Science Fiction'),
-- ('Science Fiction'),
-- ('Drama'),
('Romance'),
-- ('Historical'),
-- ('Historical'),
-- ('Drama'),
('Thriller'),
('Drama'),
('Historical');


CREATE FUNCTION add_person_birthdate
(person varchar(55), birthdate Date)
RETURNS int
LANGUAGE plpgsql AS $$
DECLARE 
	-- variables
	person_id int;
BEGIN
	-- logic 
	SELECT p.id INTO person_id FROM persons p WHERE p.name LIKE '%'||person||'%';
	
	INSERT INTO date_of_births
	(person_id, birth_date)
	VALUES
	(person_id, birthdate);
	return person_id;

END;
$$;

CREATE FUNCTION add_person_email
(person varchar(55), emailstr varchar(256))
RETURNS int
LANGUAGE plpgsql AS $$
DECLARE 
	-- variables
	person_id int;
BEGIN
	-- logic 
	SELECT p.id INTO person_id FROM persons p WHERE p.name LIKE '%'||person||'%';
	
	INSERT INTO emails
	(person_id, email_str)
	VALUES
	(person_id, emailstr);
	return person_id;

END;
$$;

CREATE FUNCTION add_person_homecountry
(person varchar(55), countryname_in varchar(55))
RETURNS int
LANGUAGE plpgsql AS $$
DECLARE 
	-- variables
	person_id int;
	country_id int;
BEGIN
	-- logic 
	SELECT p.id INTO person_id FROM persons p WHERE p.name LIKE '%'||person||'%';
	SELECT c.id INTO country_id FROM countries c WHERE c.countryname LIKE '%'||countryname_in||'%';
	
	INSERT INTO home_countries
	(person_id, countries_id)
	VALUES
	(person_id, country_id);
	return person_id;

END;
$$;

CREATE FUNCTION add_director
(person varchar(55))
RETURNS int
LANGUAGE plpgsql AS $$
DECLARE 
	-- variables
	person_id int;
BEGIN
	-- logic 
	SELECT p.id INTO person_id FROM persons p WHERE p.name LIKE '%'||person||'%';
	
	INSERT INTO movie_director
	(persons_id)
	VALUES
	(person_id);
	return person_id;

END;
$$;


CREATE FUNCTION add_writer
(person varchar(55))
RETURNS int
LANGUAGE plpgsql AS $$
DECLARE 
	-- variables
	person_id int;
BEGIN
	-- logic 
	SELECT p.id INTO person_id FROM persons p WHERE p.name LIKE '%'||person||'%';
	
	INSERT INTO movie_writer
	(persons_id)
	VALUES
	(person_id);
	return person_id;

END;
$$;

CREATE FUNCTION add_movie_star
(person varchar(55))
RETURNS int
LANGUAGE plpgsql AS $$
DECLARE 
	-- variables
	person_id int;
BEGIN
	-- logic 
	SELECT p.id INTO person_id FROM persons p WHERE p.name LIKE '%'||person||'%';
	
	INSERT INTO movie_star
	(persons_id)
	VALUES
	(person_id);
	return person_id;

END;
$$;

SELECT add_director('Stanley Kubrick');
SELECT add_director('George Lucas');
SELECT add_director('Robert Mulligan');
SELECT add_director('James Cameron');
SELECT add_director('David Lean');
SELECT add_director('Anthony Mann');
SELECT add_director('Theodoros Angelopoulos');
SELECT add_director('Paul Verhoeven');
SELECT add_director('Krzysztof Kieslowski');
SELECT add_director('Jean-Paul Rappeneau');

SELECT add_writer('Arthur C Clarke');
SELECT add_writer('George Lucas');
SELECT add_writer('Harper Lee');
SELECT add_writer('James Cameron');
SELECT add_writer('Boris Pasternak');
SELECT add_writer('Frederick Frank');
SELECT add_writer('Theodoros Angelopoulos');
SELECT add_writer('Erik Hazelhoff Roelfzema');
SELECT add_writer('Krzysztof Kieslowski');
SELECT add_writer('Edmond Rostand');

SELECT add_movie_star('Keir Dullea');
SELECT add_movie_star('Mark Hamill');
SELECT add_movie_star('Gregory Peck');
SELECT add_movie_star('Leonardo DiCaprio');
SELECT add_movie_star('Julie Christie');
SELECT add_movie_star('Charlton Heston');
SELECT add_movie_star('Manos Katrakis');
SELECT add_movie_star('Rutger Hauer');
SELECT add_movie_star('Juliette Binoche');
SELECT add_movie_star('Gerard Depardieu');


SELECT add_person_birthdate('Keir Dullea', '1936-05-30');
SELECT add_person_birthdate('Mark Hamill', '1951-09-25');
SELECT add_person_birthdate('Gregory Peck', '1916-04-05');
SELECT add_person_birthdate('Leonardo DiCaprio', '1974-11-11');
SELECT add_person_birthdate('Julie Christie', '1940-04-14');
SELECT add_person_birthdate('Charlton Heston', '1923-10-04');
SELECT add_person_birthdate('Manos Katrakis', '1908-08-14');
SELECT add_person_birthdate('Rutger Hauer', '1944-01-23');
SELECT add_person_birthdate('Juliette Binoche', '1964-03-09');
SELECT add_person_birthdate('Gerard Depardieu', '1948-12-27');

SELECT add_person_email('Arthur C Clarke', 'arthur@clarke.com');
SELECT add_person_email('George Lucas', 'george@email.com');
SELECT add_person_email('Harper Lee', 'harper@lee.com');
SELECT add_person_email('James Cameron', 'james@cameron.com');
SELECT add_person_email('Boris Pasternak', 'boris@boris.com');
SELECT add_person_email('Frederick Frank', 'fred@frank.com');
SELECT add_person_email('Theodoros Angelopoulos', 'theo@angelopoulos.com');
SELECT add_person_email('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com');
SELECT add_person_email('Krzysztof Kieslowski', 'email@email.com');
SELECT add_person_email('Edmond Rostand', 'edmond@rostand.com');

SELECT add_person_homecountry('Stanley Kubrick', 'USA');
SELECT add_person_homecountry('George Lucas', 'USA');
SELECT add_person_homecountry('Robert Mulligan', 'USA');
SELECT add_person_homecountry('James Cameron', 'Canada');
SELECT add_person_homecountry('David Lean', 'UK');
SELECT add_person_homecountry('Anthony Mann', 'USA');
SELECT add_person_homecountry('Theodoros Angelopoulos', 'Greece');
SELECT add_person_homecountry('Paul Verhoeven', 'Netherlands');
SELECT add_person_homecountry('Krzysztof Kieslowski', 'Poland');
SELECT add_person_homecountry('Jean-Paul Rappeneau', 'France');





CREATE FUNCTION add_movie
(_title VARCHAR(256), _release_year int, _score int,genre VARCHAR(128), director VARCHAR, writer VARCHAR, moviestar VARCHAR)
RETURNS int
LANGUAGE plpgsql AS $$
DECLARE 
	-- variables
	_movie_id int;
	_director_id int; 
	_writer_id int; 
	_moviestar_id int; 
	_genre_id int; 
BEGIN
	-- logic 
	BEGIN -- Exception
		select md.id INTO _director_id FROM persons p INNER JOIN movie_director md ON md.persons_id = p.id WHERE p.name LIKE '%'||director||'%';
		select mw.id INTO _writer_id FROM persons p INNER JOIN movie_writer mw ON mw.persons_id = p.id WHERE p.name LIKE '%'||writer||'%';
		select ms.id INTO _moviestar_id FROM persons p INNER JOIN movie_star ms ON ms.persons_id = p.id WHERE p.name LIKE '%'||moviestar||'%';
		select g.id INTO _genre_id FROM genres g WHERE g.genre_name LIKE '%'||genre||'%';
		
		INSERT INTO movies
		(title, release_year, score, director_id, writer_id, movie_star_id)
		VALUES
		(_title, _release_year, _score, _director_id, _writer_id, _moviestar_id)
		RETURNING id INTO _movie_id;
		
	    INSERT INTO genres_for_movies
	    (genre_id, movies_id)
	    VALUES
	    (_genre_id, _movie_id);
	
		return _movie_id;
	EXCEPTION
		WHEN OTHERS THEN
		-- Rollback and raise error 
		-- ROLLBACK; 
		RAISE;
	END;

END;
$$;
-- drop FUNCTION add_movie;

CREATE FUNCTION add_movie_cast_member
(cast_name varchar(55), movie varchar(55))
RETURNS int
LANGUAGE plpgsql AS $$
DECLARE 
	-- variables
	_person_id int;
	_movie_id int;
	_cast_id int;
BEGIN
	-- logic 
	SELECT p.id INTO _person_id FROM persons p WHERE p.name LIKE '%'||cast_name||'%';
	SELECT m.id INTO _movie_id  FROM movies m WHERE m.title LIKE '%'||movie||'%';
	
	IF _person_id IS NULL AND _movie_id IS NOT NULL THEN 
		INSERT INTO persons
		(name)
		VALUES
		(cast_name)
		RETURNING id INTO _person_id;
	END IF; 
	
	INSERT INTO cast_in_movies
	(persons_id, movies_id)
	VALUES
	(_person_id, _movie_id)
	RETURNING id INTO _cast_id;
	
	return _cast_id;

END;
$$;

DROP FUNCTION add_movie_cast_member;



select add_movie('2001: A Space Odyssey', 1968, 10, 'Science Fiction', 'Stanley Kubrick', 'Arthur C Clarke', 'Keir Dullea');
SELECT add_movie_cast_member('bob', '2001: A Space Odyssey');
SELECT add_movie_cast_member('Doodle', '2001: A Space Odyssey');

select add_movie('Star Wars: A New Hope', 1977, 7, 'Science Fiction', 'George Lucas', 'George Lucas', 'Mark Hamill');
SELECT add_movie_cast_member('bob', 'Star Wars: A New Hope');
SELECT add_movie_cast_member('Flart', 'Star Wars: A New Hope');

select add_movie('To Kill A Mockingbird', 1962, 10, 'Drama', 'Robert Mulligan', 'Harper Lee', 'Gregory Peck');
SELECT add_movie_cast_member('bob', 'To Kill A Mockingbird');
SELECT add_movie_cast_member('Blorp', 'To Kill A Mockingbird');

select add_movie('Titanic', 1997, 5, 'Romance', 'James Cameron', 'James Cameron', 'Leonardo DiCaprio');
SELECT add_movie_cast_member('bob', 'Titanic');
SELECT add_movie_cast_member('Glirp', 'Titanic');

select add_movie('Dr Zhivago', 1965, 8, 'Historical', 'David Lean', 'Boris Pasternak', 'Julie Christie');
SELECT add_movie_cast_member('bob', 'Dr Zhivago');
SELECT add_movie_cast_member('Frumthh', 'Dr Zhivago');

select add_movie('El Cid', 1961, 6, 'Historical', 'Anthony Mann', 'Frederick Frank', 'Charlton Heston');
SELECT add_movie_cast_member('bob', 'El Cid');
SELECT add_movie_cast_member('Dovid', 'El Cid');

select add_movie('Voyage to Cythera', 1984, 8, 'Drama', 'Theodoros Angelopoulos', 'Theodoros Angelopoulos', 'Manos Katrakis');
SELECT add_movie_cast_member('bob', 'Voyage to Cythera');
SELECT add_movie_cast_member('Golum', 'Voyage to Cythera');

select add_movie('Soldier of Orange', 1977, 8, 'Thriller', 'Paul Verhoeven', 'Erik Hazelhoff Roelfzema', 'Rutger Hauer');
SELECT add_movie_cast_member('bob', 'Soldier of Orange');
SELECT add_movie_cast_member('Golumum', 'Soldier of Orange');

select add_movie('Three Colours: Blue', 1993, 8, 'Drama', 'Krzysztof Kieslowski', 'Krzysztof Kieslowski', 'Juliette Binoche');
SELECT add_movie_cast_member('bob', 'Three Colours: Blue');
SELECT add_movie_cast_member('Shrek', 'Three Colours: Blue');

select add_movie('Cyrano de Bergerac', 1990, 9, 'Historical', 'Jean-Paul Rappeneau', 'Edmond Rostand', 'Gerard Depardieu');
SELECT add_movie_cast_member('bob', 'Cyrano de Bergerac');
SELECT add_movie_cast_member('Loink', 'Cyrano de Bergerac');


