CREATE TABLE director
(
id SERIAL,
name VARCHAR(50),
country VARCHAR(50),
PRIMARY KEY(id)
);

CREATE TABLE star
(
id SERIAL,
name VARCHAR(50),
dob Date,
PRIMARY KEY(id)
);


CREATE TABLE writer
(
id SERIAL,
name VARCHAR(50),
email VARCHAR(100),
PRIMARY KEY(id)
);


CREATE TABLE Film
(
id SERIAL,
directorID INT, 
StarID INT,
writerID INT,
title VARCHAR(100),
_year INT,
genre VARCHAR(30),
score INT,
PRIMARY KEY(id)
);



INSERT INTO director (name, country) VALUES
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


INSERT INTO star (name, dob) VALUES
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


INSERT INTO writer (name, email) VALUES
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

INSERT INTO Film (directorID, StarID, writerID, title, _year, genre, score) VALUES
(1, 1, 1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10),
(2, 2, 2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7),
(3, 3, 3, 'To Kill A Mockingbird', 1962, 'Drama', 10),
(4, 4, 4, 'Titanic', 1997, 'Romance', 5),
(5, 5, 5, 'Dr Zhivago', 1965, 'Historical', 8),
(6, 6, 6, 'El Cid', 1961, 'Historical', 6),
(7, 7, 7, 'Voyage to Cythera', 1984, 'Drama', 8),
(8, 8, 8, 'Soldier of Orange', 1977, 'Thriller', 8),
(9, 9, 9, 'Three Colours: Blue', 1993, 'Drama', 8),
(10, 10, 10, 'Cyrano de Bergerac', 1990, 'Historical', 9);



SELECT f.title, d.name FROM Film f INNER JOIN director d
ON f.directorID = d.id;

SELECT f.title, d.name, s.name FROM Film f 
INNER JOIN director d
ON f.directorID = d.id
INNER JOIN star s
on f.starID = s.id;

SELECT title FROM Film f
INNER JOIN director d
ON f.directorID = d.id
WHERE d.country = 'USA';

SELECT title FROM Film f
INNER JOIN director d
ON f.directorID = d.id
INNER JOIN writer w
ON f.writerID = w.id
WHERE w.name = d.name;

SELECT d.name, title FROM Film f
INNER JOIN director d
ON f.directorID = d.id
WHERE (score) >= 8;




SELECT 
d.name AS directorName, d.country AS directorCountry, 
s.name AS starName, s.dob AS starDOB,
w.name AS writerName, w.email AS writerEmail,
title, _year, genre, score
FROM Film f
INNER JOIN director d ON f.directorID = d.id
INNER JOIN star s ON f.starID = s.id
INNER JOIN writer w ON f.writerID = w.id;


SELECT title FROM Film f
INNER JOIN director d
ON f.directorID = d.id
WHERE (score) > 8 AND d.country = 'USA';


SELECT d.name, AVG(score) FROM Film f
INNER JOIN director d
ON f.directorID = d.id
GROUP BY d.name;


SELECT d.name AS director, w.name AS writer, s.name AS star, title from Film f
INNER JOIN director d ON f.directorID = d.id
INNER JOIN star s ON f.starID = s.id
INNER JOIN writer w ON f.writerID = w.id
WHERE (_year) > 1990 AND (_year) < 2000;


SELECT d.name AS director, w.name AS writer, s.name AS star from Film f
INNER JOIN director d ON f.directorID = d.id
INNER JOIN star s ON f.starID = s.id
INNER JOIN writer w ON f.writerID = w.id;














