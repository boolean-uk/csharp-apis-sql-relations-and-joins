
--Create Table director
CREATE TABLE director(
	director_id serial PRIMARY KEY, 
	d_name VARCHAR(50),
	country VARCHAR(50)
	);

--Populate Table with directors
INSERT INTO director (d_name, country)
VALUES
	('Stanley Kubrick','USA'),
	('George Lucas','USA'),
	('Robert Mulligan','USA'),
	('James Cameron','Canada'),
	('David Lean','UK'),
	('Anthony Mann','USA'),
	('Theodoros Angelopoulos','Greece'),
	('Paul Verhoeven','Netherlands'),
	('Krzysztof Kieslowski','Poland'),
	('Jean-Paul Rappeneau','France');

--Create Table star
CREATE TABLE star (
	star_id serial PRIMARY KEY,
	s_name VARCHAR(50),
	dob VARCHAR(50)
	);

--Populate Table with stars
INSERT INTO star (s_name, dob)
VALUES
	('Keir Dullea','30/05/1936'),
	('Mark Hamill','25/09/1951'),
	('Gregory Peck','05/04/1916'),
	('Leonardo DiCaprio','11/11/1974'),
	('Julie Christie','14/04/1940'),
	('Charlton Heston','04/10/1923'),
	('Manos Katrakis','14/08/1908'),
	('Rutger Hauer','23/01/1944'),
	('Juliette Binoche','09/03/1964'),
	('Gerard Depardieu','27/12/1948');

--Create Table writer
CREATE TABLE writer (
	writer_id serial PRIMARY KEY,
	w_name VARCHAR(50), 
	email VARCHAR(50)
	);

--Populate Table with writers
INSERT INTO writer (w_name, email)
VALUES
	('Arthur C Clarke','arthur@clarke.com'),
	('George Lucas','george@email.com'),
	('Harper Lee','harper@lee.com'),
	('James Cameron','james@cameron.com'),
	('Boris Pasternak','boris@boris.com'),
	('Frederick Frank','fred@frank.com'),
	('Theodoros Angelopoulos','theo@angelopoulos.com'),
	('Erik Hazelhoff Roelfzema','erik@roelfzema.com'),
	('Krzysztof Kieslowsk','email@email.com'),
	('Edmond Rostand','edmond@rostand.com');
  
  --Create Table film
CREATE TABLE film (
	film_id serial PRIMARY KEY,
	title VARCHAR(50),
	genre VARCHAR(50),
	year_released INTEGER,
	score INTEGER,
	film_director_id int, 
	film_star_id int,
	film_writer_id int,
	CONSTRAINT FK_Directors FOREIGN KEY (film_director_id) 
  		REFERENCES director(director_id)
  		ON DELETE CASCADE
  		ON UPDATE CASCADE,
	CONSTRAINT FK_Stars FOREIGN KEY (film_star_id) 
  		REFERENCES star(star_id)
  		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT FK_Writer FOREIGN KEY (film_writer_id) 
  		REFERENCES writer(writer_id)
 		ON DELETE CASCADE
		ON UPDATE CASCADE
	);

--Populate Table with films
INSERT INTO film (title, year_released, genre, score, film_director_id, film_star_id, film_writer_id)
VALUES
	('2001: A Space Odyssey',1968, 'Science Fiction', 10, 1, 1, 1),
	('Star Wars: A New Hope',1977,'Science Fiction',7, 2, 2, 2),
	('To Kill A Mockingbird',1962,'Drama',10, 3, 3, 3),
	('Titanic',1997, 'Romance', 5, 4, 4, 4),
	('Dr Zhivago',1965,'Historical',8, 5, 5, 5),
	('El Cid',1961,'Historical',6 , 6, 6, 6),
	('Voyage to Cythera',1984,'Drama',8, 7, 7, 7),
	('Soldier of Orange',1977,'Thriller',8 ,8, 8, 8),
	('Three Colours: Blue',1993,'Drama',8 , 9, 9, 9),
	('Cyrano de Bergerac',1990,'Historical',9, 10, 10,10);
  