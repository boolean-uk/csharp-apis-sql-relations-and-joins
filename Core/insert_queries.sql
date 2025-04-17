
INSERT INTO 
	Director (name, country_id) 
VALUES
	('Stanley Kubrick', 1),
	('George Lucas', 1),
	('Robert Mulligan', 1),
	('James Cameron', 2),
	('David Lean', 3),
	('Anthony Mann', 1),
	('Theodoros Angelopoulos', 4),
	('Paul Verhoeven', 5),
	('Krzysztof Kieslowski', 6),
	('Jean-Paul Rappeneau', 7);

INSERT INTO 
	Director_Countries (name) 
VALUES
	('USA'),
	('Canada'),
	('UK'),
	('Greece'),
	('Netherlands'),
	('Poland'),
	('France');

INSERT INTO 
	Star (name, date_of_birth) 
VALUES
	('Keir Dullea', TO_DATE('30/05/1936', 'DD/MM/YYYY')),
	('Mark Hamill', TO_DATE('25/09/1951', 'DD/MM/YYYY')),
	('Gregory Peck', TO_DATE('05/04/1916', 'DD/MM/YYYY')),
	('Leonardo DiCaprio', TO_DATE('11/11/1974', 'DD/MM/YYYY')),
	('Julie Christie', TO_DATE('14/04/1940', 'DD/MM/YYYY')),
	('Charlton Heston', TO_DATE('04/10/1923', 'DD/MM/YYYY')),
	('Manos Katrakis', TO_DATE('14/08/1908', 'DD/MM/YYYY')),
	('Rutger Hauer', TO_DATE('23/01/1944', 'DD/MM/YYYY')),
	('Juliette Binoche', TO_DATE('09/03/1964', 'DD/MM/YYYY')),
	('Gerard Depardieu', TO_DATE('27/12/1948', 'DD/MM/YYYY'));

INSERT INTO 
	Writer (name, email) 
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
	('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO 
	Film_Genre (name) 
VALUES
	('Science Fiction'),
	('Drama'),
	('Romance'),
	('Historical'),
	('Thriller');

INSERT INTO 
	Film (title, releaseyear, genre_id, rating, director_id, star_id, writer_id) 
VALUES
	('2001: A Space Odyssey', 1968, 1, 10, 1, 1, 1),
	('Star Wars: A New Hope', 1977, 1, 7, 2, 2, 2),
	('To Kill A Mockingbird', 1962, 2, 10, 3, 3, 3),
	('Titanic', 1997, 3, 5, 4, 4, 4),
	('Dr Zhivago', 1965, 4, 8, 5, 5, 5),
	('El Cid', 1961, 4, 6, 6, 6, 6),
	('Voyage to Cythera', 1984, 2, 8, 7, 7, 7),
	('Soldier of Orange', 1977, 5, 8, 8, 8, 8),
	('Three Colours: Blue', 1993, 2, 8, 9, 9, 9),
	('Cyrano de Bergerac', 1990, 4, 9, 10, 10, 10);
