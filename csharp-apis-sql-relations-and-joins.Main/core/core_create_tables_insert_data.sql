-- Core Task

/* Normalise the data shown in the table so that it has multiple tables (Film, Director, Star and Writer)
 * with an appropriate Primary Key for each and suitable Foreign Key relationships
 * set up so that the data can still be linked together as needed.
 */

CREATE TABLE films (
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	release_year INT NOT NULL,
	genre VARCHAR(255) NOT NULL,
	score INT NOT NULL,
	directorid_fk INT NOT NULL,
	starid_fk INT NOT NULL,
	writerid_fk INT NOT NULL
);

CREATE TABLE directors (
	id serial PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	country VARCHAR(255) NOT NULL
);

CREATE TABLE stars (
	id serial PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	dob DATE NOT NULL
);

CREATE TABLE writers (
	id serial PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL
);

-- populate the tables with the data shown

INSERT INTO directors (name, country) VALUES
('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France')
;

INSERT INTO stars (name, dob) VALUES
('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27')
;

INSERT INTO writers (name, email) VALUES
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowsk', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com')
;

INSERT INTO films (title, release_year, genre, score, directorid_fk, starid_fk, writerid_fk) VALUES
('2001: A Space Odyssey', 1968, 'Science Fiction', 10,  1,  1,  1),
('Star Wars: A New Hope', 1977, 'Science Fiction',  7,  2,  2,  2),
('To Kill A Mockingbird', 1962, 'Drama'          , 10,  3,  3,  3),
('Titanic'			    , 1997, 'Romance'		 ,  5,  4,  4,  4),
('Dr Zhivago'			, 1965, 'Historical'	 ,  8,  5,  5,  5),
('El Cid'				, 1961, 'Historical'	 ,  6,  6,  6,  6),
('Voyage to Cythera'	, 1984, 'Drama'			 ,  8,  7,  7,  7),
('Soldier of Orange'	, 1977, 'Thriller'		 ,  8,  8,  8,  8),
('Three Colours: Blue'  , 1993, 'Drama'			 ,  8,  9,  9,  9),
('Cyrano de Bergerac'   , 1990, 'Historical'	 ,  9, 10, 10, 10)
;
