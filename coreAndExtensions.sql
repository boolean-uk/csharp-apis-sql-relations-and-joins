DROP VIEW IF  EXISTS writerperson;
DROP VIEW IF EXISTS starPerson;
DROP VIEW IF EXISTS title_director;
DROP VIEW IF EXISTS directorperson;
DROP VIEW IF EXISTS director_writer;



DROP TABLE IF EXISTS Films;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS stars;
DROP TABLE IF EXISTS writer;
DROP TABLE IF EXISTS person;


CREATE TABLE person(
	personID BIGSERIAL PRIMARY KEY,
	firstname varchar,
	lastname varchar
	
);
CREATE TABLE directors(
	directorID SERIAL not null	,
	country varchar,
	PRIMARY KEY(directorID),
	personid int REFERENCES person(personid)
	);
	
CREATE TABLE stars(
	starID BIGSERIAL PRIMARY KEY,
	stardob date,
	personid int REFERENCES person(personID)
);
CREATE TABLE writer(
	writerid BIGSERIAL PRIMARY KEY,
	email varchar,
	personid int REFERENCES person(personID)
);

CREATE TABLE Films(
        FilmID BIGSERIAL PRIMARY KEY ,
        Title VARCHAR,
        Genre VARCHAR,
        releaseYear INT,
        Score INT,
        directorid int REFERENCES directors(directorID),
        starid int REFERENCES stars(starID),
        writerid int REFERENCES writer(writerid)
        
        );

-- Insert into person table
INSERT INTO person (personID, firstname, lastname) VALUES
(1, 'Stanley', 'Kubrick'),
(2, 'George', 'Lucas'),
(3, 'Robert', 'Mulligan'),
(4, 'James', 'Cameron'),
(5, 'David', 'Lean'),
(6, 'Anthony', 'Mann'),
(7, 'Theodoros', 'Angelopoulos'),
(8, 'Paul', 'Verhoeven'),
(9, 'Krzysztof', 'Kieslowski'),
(10, 'Jean-Paul', 'Rappeneau'),
(11, '	Arthur C Clarke', ''),
(12, '	Harper Lee', ''),
(13, '	Boris Pasternak', ''),
(14, 'Frederick Frank', ''),
(15, 'Erik Hazelhoff Roelfzema', ''),
(16, 'Edmond Rostand', ''),
(17, 'Keir',' Dullea'),
(18, 'Mark Hamill',' '),
(19, 'Gregory Peck',' '),
(20, 'Leonardo DiCaprio',' '),
(21, 'Julie Christie',' '),
(22, 'Charlton Heston',' '),
(23, 'Manos Katrakis',' '),
(24, 'Rutger Hauer',' '),
(25, 'Juliette Binoche',' '),
(26, 'Gerard Depardieu',' ');

-- Insert into directors table
INSERT INTO directors (directorID, country, personID) VALUES
(1, 'USA', 1),
(2, 'USA', 2),
(3, 'USA', 3),
(4, 'Canada', 4),
(5, 'UK', 5),
(6, 'USA', 6),
(7, 'Greece', 7),
(8, 'Netherlands', 8),
(9, 'Poland', 9),
(10, 'France', 10);

-- Insert into stars table
INSERT INTO stars (starID, stardob, personID) VALUES
(1, '1936-05-30', 17),
(2, '1951-09-25', 18),
(3, '1916-04-05', 19),
(4, '1974-11-11', 20),
(5, '1940-04-14', 21),
(6, '1923-10-04', 22),
(7, '1908-08-14', 23),
(8, '1944-01-23', 24),
(9, '1964-03-09', 25),
(10, '1948-12-27', 26);

-- Insert into writer table
INSERT INTO writer (writerID, email, personID) VALUES
(1, 'arthur@clarke.com', 11),
(2, 'george@email.com', 2),
(3, 'harper@lee.com', 12),
(4, 'james@cameron.com', 4),
(5, 'boris@boris.com', 13),
(6, 'fred@frank.com', 14),
(7, 'theo@angelopoulos.com', 7),
(8, 'erik@roelfzema.com', 15),
(9, 'email@email.com', 9),
(10, 'edmond@rostand.com', 16);

-- Insert into Films table
INSERT INTO Films (FilmID, Title, Genre, releaseYear, Score, directorID, starID, writerID) VALUES
(1, '2001: A Space Odyssey', 'Science Fiction', 1968, 10, 1, 1, 1),
(2, 'Star Wars: A New Hope', 'Science Fiction', 1977, 4, 2, 2, 4),
(3, 'To Kill A Mockingbird', 'Drama', 1962, 10, 3, 3, 3),
(4, 'Titanic', 'Romance', 1997, 5, 4, 4, 4),
(5, 'Dr Zhivago', 'Historical', 1965, 8, 5, 5, 5),
(6, 'El Cid', 'Historical', 1961, 6, 6, 6, 6),
(7, 'Voyage to Cythera', 'Drama', 1984, 8, 7, 7, 7),
(8, 'Soldier of Orange', 'Thriller', 1977, 8, 8, 8, 8),
(9, 'Three Colours: Blue', 'Drama', 1993, 8, 9, 9, 9),
(10, 'Cyrano de Bergerac', 'Historical', 1990, 9, 10, 10, 10);


--queries


-- Show the title and director name for all films
CREATE VIEW directorPerson AS
SELECT firstname director_firstname, lastname director_lastname, directorid director_id ,person.personid directorpersonid from person
inner join directors on person.personID= directors.directorid;
select * from directorperson;

CREATE VIEW title_director AS
SELECT title movie_title, director_firstname, director_lastname , director_id, score from Films --for easy access in later tasks
inner join directorPerson on directorPerson.director_id=films.directorid; 
select * from title_director;

SELECT title movie_title, director_firstname, director_lastname  from Films
inner join directorPerson on directorPerson.director_id=films.directorid;  --solution

--Show the title, director and star name for all films
CREATE VIEW starPerson AS
SELECT firstname star_firstname, lastname star_lastname, starid from person
INNER JOIN stars ON person.personid = stars.starid;

SELECT films.title, director_firstname, director_lastname, star_firstname, star_lastname  from title_director --solution
inner join films on films.directorid = directorid
inner join starperson on starperson.starid = films.starid;

--Show the title of films where the director is from the USA
select movie_title from title_director
inner join directors on directors.directorid = title_director.director_id
where directors.country= 'USA';

--Show only those films where the writer and the director are the same person
create view writerperson as
select firstname, lastname, person.personid writerpersonid from person
inner join writer on writer.personid= person.personid;
select * from writerperson;

select f.title , w.firstname, w.lastname, directorperson from films f 
inner join directorperson  on f.directorid= directorperson.director_id 
inner join writerperson as w on w.writerpersonid = directorperson.directorpersonid
where w.writerpersonid = directorperson.directorpersonid;

--Show directors and film titles for films with a score of 8 or higher
select title_director.movie_title, director_firstname, director_lastname, score from title_director
Where score>=8;

