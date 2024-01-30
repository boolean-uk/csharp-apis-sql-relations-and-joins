-- writer
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
	('Krzysztof Kieslowsk', 'email@email.com'),
	('Edmond Rostand', 'edmond@rostand.com')
;

-- star
INSERT INTO star (name, dob)
VALUES 
	('Keir Dullea', '1936/05/30'),
	('Mark Hamill', '1951/09/25'),
	('Gregory Peck', '1916/04/05'),
	('Leonardo DiCaprio', '1974/11/11'),
	('Julie Christie', '1940/04/14'),
	('Charlton Heston', '1923/10/04'),
	('Manos Katrakis', '1908/08/14'),
	('Rutger Hauer', '1944/01/23'),
	('Juliette Binoche', '1964/03/09'),
	('Gerard Depardieu', '1948/12/27')
;

-- director
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
	('Jean-Paul Rappeneau', 'France')
;

-- Movie
INSERT INTO movie (title, year, genre, score, director_id_fk, star_id_fk, writer_id_fk)
VALUES 
	('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
	('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
	('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
	('Titanic', 1997, 'Romance', 5, 4, 4, 4),
	('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
	('El Cid', 1961, 'Historical', 6, 6, 6, 6),
	('Voyage to Cythera', 1984, 'Drama', 8, 7,7,7),
	('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
	('Three Colours: Blue', 1993, 'Drama', 8, 9,9,9),
	('Cyrano de Bergerac', 1990, 'Historical', 9, 10,10,10)
;

-- writer-movie 
INSERT INTO writer_movie(movie_id, writer_id)
VALUES 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10)
;

-- star-movie
INSERT INTO star_movie(movie_id, star_id)
VALUES 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10)
;

-- director-movie
INSERT INTO director_movie(movie_id, director_id)
VALUES 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10)
;