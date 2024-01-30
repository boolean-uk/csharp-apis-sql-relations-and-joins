-- create table for directors
CREATE TABLE director
	(
	id serial PRIMARY KEY,
	name VARCHAR(255),
	country VARCHAR(255)
	);
	
-- create table for stars	
CREATE TABLE star 
	(
	id serial PRIMARY key,
	name VARCHAR(255),
	DOB DATE
	);

--create table for writers
CREATE TABLE writer 
	(
	id serial PRIMARY KEY, 
	name VARCHAR(255),
	email varchar(255),
	FOREIGN KEY (id) REFERENCES films(id)
	
	);

--DROP TABLE writer CASCADE;


-- create table for films
CREATE TABLE films
	( id serial PRIMARY KEY, 
	title VARCHAR(255),
	director_id integer, 
	star_id integer,
	writer_id integer,
	year integer,
	genre VARCHAR(255),
	score INTEGER,
	FOREIGN KEY (director_id) REFERENCES director(id),
    FOREIGN KEY (star_id) REFERENCES star(id),
    FOREIGN KEY (writer_id) REFERENCES writer(id)
	);


-- populate director table
INSERT INTO director (name, country) 
VALUES
	('Stanley Kubrick', 'USA'),
	('George Lucas', 'USA'),
	('Robert Mulligan', 'USA'),
	('James Cameron', 'Canada'),
	('David Lean', 'UK'),
	('Anthony Mann', 'USA'),
	('Theodoros Angelopoulos', 'Greece'),
	('Paul Verhoeven', 'Netherlands'),
	('Krzysztof Kieslowski', 'Poland'),
	('Jean-Paul Rappeneau', 'France');


-- populate star table
INSERT INTO star (name, DOB)
VALUES
	('Keir Dullea', '1936-05-30'),
	('Mark Hamill', '1951-09-25'),
	('Gregory Peck', '1916-04-05'),
	('Leonardo DiCaprio', '1974-11-11'),
	('Julie Christie', '1940-04-14'),
	('Charlton Heston', '1923-10-04'),
	('Manos Katrakis', '1908-08-14'),
	('Rutger Hauer', '1944-01-23'),
	('Juliette Binoche', '1964-03-09'),
	('Gerard Depardieu', '1948-12-27');

-- papulate writer table
INSERT INTO writer (name, email) 
VALUES
	('Arthur C Clarke', 'arthur@clarke.com'),
	('George Lucas', 'george@email.com'),
	('Harper Lee', 'harper@lee.com'),
	('James Cameron', 'james@cameron.com'),
	('Boris Pasternak', 'boris@boris.com'),
	('Frederick Frank', 'fred@frank.com'),
	('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
	('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
	('Krzysztof Kieslowski', 'email@email.com'),
	('Edmond Rostand', 'edmond@rostand.com');


-- populate films table
INSERT INTO films (title, director_ID, star_id, writer_id, year, genre, score) 
VALUES
	('2001: A Space Odyssey', 1, 1, 1, 1968, 'Science Fiction', 10),
	('Star Wars: A New Hope', 2, 2, 2, 1977, 'Science Fiction', 7),
	('To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
	('Titanic', 4, 4, 4, 1997, 'Romance', 5),
	('Dr Zhivago', 5, 5, 5, 1965, 'Historical', 8),
	('El Cid', 6, 6, 6, 1961, 'Historical', 6),
	('Voyage to Cythera', 7, 7, 7, 1984, 'Drama', 8),
	('Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
	('Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
	('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9);
	
*/

 --   1. Show the title and director name for all films
 SELECT films.title, director.name 
 FROM films
 JOIN director ON films.director_id = director_id;
 
 
 --   2. Show the title, director and star name for all films
 SELECT films.title, director.name, star.name 
 FROM films
 JOIN director ON films.director_id = director_id
 JOIN star ON films.star_id = star.id;
 
 
 --   3. Show the title of films where the director is from the USA
 SELECT films.title
 FROM films
 JOIN director ON films.director_id = director_id
 WHERE director.country = 'USA';
 
 
 --   4. Show only those films where the writer and the director are the same person
 SELECT * FROM films
 JOIN writer ON films.writer_id = writer_id
 JOIN director ON films.director_id = director.id
 WHERE director.name = writer.name;
 
 
 --   5. Show directors and film titles for films with a score of 8 or higher
 SELECT films.title, director.name 
 FROM films
 JOIN director ON films.director_id = director.id
 WHERE films.score >8;
 
 
 --   6. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
 
 --1-of-5 name of the writers and the number of films they have written
 SELECT writer.name, COUNT(*) as count_films
 FROM films 
 JOIN writer ON films.writer_id = writer.id
 GROUP BY writer.name;
 
 
 --2-of-5  
 SELECT films.title, films.genre, films.id
 from films
 join star on films.star_id = star.id
 where star.DOB > '1950-01-01';
 
 
 --3-of-5   name of the director and average score of their films
 SELECT director.Name, AVG(films.score) AS avg_score
 FROM films
 JOIN director on films.director_id = director.id
 group by director.name;


--4-of-5 
 SELECT films.title, films.year, films.score, director.name
 from films
 join director on films.director_id = director_id
 where films.score > 8;

--5-of-5  name of the stars with their film scores in ascending order
 SELECT star.name, films.score
 from films
 join star on films.star_id = star_id
 order by films.score ASC;
