
CREATE TABLE people
(
id SERIAL,
name VARCHAR(50),
country VARCHAR(50),
email VARCHAR(50),
dob Date,
role VARCHAR(30),
PRIMARY KEY(id)
);


CREATE TABLE Film
(
id SERIAL,
directorID INT, 
starID INT,
writerID INT,
title VARCHAR(100),
_year INT,
genre VARCHAR(30),
score INT,
PRIMARY KEY(id)
);



INSERT INTO people (name, country, email, dob, role) VALUES
-- Directors
('Stanley Kubrick', 'USA', NULL, NULL, 'Director'),
('George Lucas', 'USA', NULL, NULL, 'Director'),
('Robert Mulligan', 'USA', NULL, NULL, 'Director'),
('James Cameron', 'Canada', NULL, NULL, 'Director'),
('David Lean', 'UK', NULL, NULL, 'Director'),
('Anthony Mann', 'USA', NULL, NULL, 'Director'),
('Theodoros Angelopoulos', 'Greece', 'theo@angelopoulos.com', NULL, 'Director'),
('Paul Verhoeven', 'Netherlands', NULL, NULL, 'Director'),
('Krzysztof Kieslowski', 'Poland', 'email@email.com', NULL, 'Director'),
('Jean-Paul Rappeneau', 'France', NULL, NULL, 'Director'),

-- Stars
('Keir Dullea', 'USA', NULL, '1936-05-30', 'Star'),
('Mark Hamill', 'USA', NULL, '1951-09-25', 'Star'),
('Gregory Peck', 'USA', NULL, '1916-04-05', 'Star'),
('Leonardo DiCaprio', 'USA', NULL, '1974-11-11', 'Star'),
('Julie Christie', 'UK', NULL, '1940-04-14', 'Star'),
('Charlton Heston', 'USA', NULL, '1923-10-04', 'Star'),
('Manos Katrakis', 'Greece', NULL, '1908-08-14', 'Star'),
('Rutger Hauer', 'Netherlands', NULL, '1944-01-23', 'Star'),
('Juliette Binoche', 'France', NULL, '1964-03-09', 'Star'),
('Gerard Depardieu', 'France', NULL, '1948-12-27', 'Star'),

-- Writers
('Arthur C Clarke', 'USA', 'arthur@clarke.com', NULL, 'Writer'),
('George Lucas', 'USA', 'george@email.com', NULL, 'Writer'),
('Harper Lee', 'USA', 'harper@lee.com', NULL, 'Writer'),
('James Cameron', 'Canada', 'james@cameron.com', NULL, 'Writer'),
('Boris Pasternak', 'Russia', 'boris@boris.com', NULL, 'Writer'),
('Frederick Frank', 'USA', 'fred@frank.com', NULL, 'Writer'),
('Theodoros Angelopoulos', 'Greece', 'theo@angelopoulos.com', NULL, 'Writer'),
('Erik Hazelhoff Roelfzema', 'Netherlands', 'erik@roelfzema.com', NULL, 'Writer'),
('Krzysztof Kieslowski', 'Poland', 'email@email.com', NULL, 'Writer'),
('Edmond Rostand', 'France', 'edmond@rostand.com', NULL, 'Writer');



INSERT INTO Film (directorID, StarID, writerID, title, _year, genre, score) VALUES
(1, 11, 21, '2001: A Space Odyssey', 1968, 'Science Fiction', 10),
(2, 12, 22, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7),
(3, 13, 23, 'To Kill A Mockingbird', 1962, 'Drama', 10),
(4, 14, 24, 'Titanic', 1997, 'Romance', 5),
(5, 15, 25, 'Dr Zhivago', 1965, 'Historical', 8),
(6, 16, 26, 'El Cid', 1961, 'Historical', 6),
(7, 17, 27, 'Voyage to Cythera', 1984, 'Drama', 8),
(8, 18, 28, 'Soldier of Orange', 1977, 'Thriller', 8),
(9, 19, 29, 'Three Colours: Blue', 1993, 'Drama', 8),
(10, 20, 30, 'Cyrano de Bergerac', 1990, 'Historical', 9);




SELECT f.title, p.name FROM Film f INNER JOIN people p
ON f.directorID = p.id;

SELECT f.title, d.name AS director, s.name AS star FROM Film f 
INNER JOIN people d
ON f.directorID = d.id
INNER JOIN people s
on f.starID = s.id;

SELECT title FROM Film f
INNER JOIN people d
ON f.directorID = d.id
WHERE d.country = 'USA';

SELECT title FROM Film f
INNER JOIN people d
ON f.directorID = d.id
INNER JOIN people w
ON f.writerID = w.id
WHERE w.name = d.name;

SELECT d.name, title FROM Film f
INNER JOIN people d
ON f.directorID = d.id
WHERE (score) >= 8;




SELECT 
d.name AS directorName, d.country AS directorCountry, 
s.name AS starName, s.dob AS starDOB,
w.name AS writerName, w.email AS writerEmail,
title, _year, genre, score
FROM Film f
INNER JOIN people d ON f.directorID = d.id
INNER JOIN people s ON f.starID = s.id
INNER JOIN people w ON f.writerID = w.id;


SELECT title FROM Film f
INNER JOIN people d
ON f.directorID = d.id
WHERE (score) > 8 AND d.country = 'USA';


SELECT d.name, AVG(score) FROM Film f
INNER JOIN people d
ON f.directorID = d.id
GROUP BY d.name;


SELECT d.name AS director, w.name AS writer, s.name AS star, title from Film f
INNER JOIN people d ON f.directorID = d.id
INNER JOIN people s ON f.starID = s.id
INNER JOIN people w ON f.writerID = w.id
WHERE (_year) > 1990 AND (_year) < 2000;


SELECT d.name AS director, w.name AS writer, s.name AS star from Film f
INNER JOIN people d ON f.directorID = d.id
INNER JOIN people s ON f.starID = s.id
INNER JOIN people w ON f.writerID = w.id;














