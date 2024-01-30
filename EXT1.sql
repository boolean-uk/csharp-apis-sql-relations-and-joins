--creating people table
CREATE TABLE People (
  id serial PRIMARY KEY,
  Name VARCHAR(99),
  Type VARCHAR(10)
)

-- Create new tables
CREATE TABLE Star (
  id INTEGER PRIMARY KEY REFERENCES People(id),
  DOB VARCHAR(15)
) ;

CREATE TABLE Director (
  id INTEGER PRIMARY KEY REFERENCES People(id),
  Country VARCHAR(99)
) ;

CREATE TABLE Writer (
  id INTEGER PRIMARY KEY REFERENCES People(id),
  Email VARCHAR(99)
) 
*/

-- insert names into people
INSERT INTO People (Name, Type)
VALUES
  ('Stanley Kubrick', 'Director'),
  ('George Lucas', 'Director'),
  ('Robert Mulligan', 'Director'),
  ('James Cameron', 'Director'),
  ('David Lean', 'Director'),
  ('Anthony Mann', 'Director'),
  ('Theodoros Angelopoulos', 'Director'),
  ('Paul Verhoeven', 'Director'),
  ('Krzysztof Kieslowski', 'Director'),
  ('Jean-Paul Rappeneau', 'Director'),
  ('Keir Dullea', 'Actor'),
  ('Mark Hamill', 'Actor'),
  ('Gregory Peck', 'Actor'),
  ('Leonardo DiCaprio', 'Actor'),
  ('Julie Christie', 'Actor'),
  ('Charlton Heston', 'Actor'),
  ('Manos Katrakis', 'Actor'),
  ('Rutger Hauer', 'Actor'),
  ('Juliette Binoche', 'Actor'),
  ('Gerard Depardieu', 'Actor'),
  ('Arthur C Clarke', 'Writer'),
  ('George Lucas', 'Writer'),
  ('Harper Lee', 'Writer'),
  ('James Cameron', 'Writer'),
  ('Boris Pasternak', 'Writer'),
  ('Frederick Frank', 'Writer'),
  ('Theodoros Angelopoulos', 'Writer'),
  ('Erik Hazelhoff Roelfzema', 'Writer'),
  ('Krzysztof Kieslowsk', 'Writer'),
  ('Edmond Rostand', 'Writer');

  INSERT INTO Star (id, DOB)
VALUES
  (11, '30/05/1936'),
  (12, '25/09/1951'),
  (13, '05/04/1916'),
  (14, '11/11/1974'),
  (15, '14/04/1940'),
  (16, '04/10/1923'),
  (17, '14/08/1908'),
  (18, '23/01/1944'),
  (19, '09/03/1964'),
  (20, '27/12/1948');

INSERT INTO Director (id, Country)
VALUES
  (1, 'USA'),
  (2, 'USA'),
  (3, 'USA'),
  (4, 'Canada'),
  (5, 'UK'),
  (6, 'USA'),
  (7, 'Greece'),
  (8, 'Netherlands'),
  (9, 'Poland'),
  (10, 'France');

INSERT INTO Writer (id, Email)
VALUES
  (11, 'arthur@clarke.com'),
  (12, 'george@email.com'),
  (13, 'harper@lee.com'),
  (14, 'james@cameron.com'),
  (15, 'boris@boris.com'),
  (16, 'fred@frank.com'),
  (17, 'theo@angelopoulos.com'),
  (18, 'erik@roelfzema.com'),
  (19, 'email@email.com'),
  (20, 'edmond@rostand.com');
*/  

--Alter Film Table
ALTER TABLE Film
ADD FOREIGN KEY (Director_id) REFERENCES Director(id),
ADD FOREIGN KEY (Star_id) REFERENCES Star(id),
ADD FOREIGN KEY (Writer_id) REFERENCES Writer(id);

--Show the title and director name for all films
SELECT Film.Title, People.Name AS Director
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN People ON Director.id = People.id;

--Show the title, director, and star name for all films:

SELECT Film.Title, PeopleD.Name AS Director, PeopleA.Name AS Star
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN People AS PeopleD ON Director.id = PeopleD.id
JOIN Star ON Film.Star_id = Star.id
JOIN People AS PeopleA ON Star.id = PeopleA.id;

--Show the title of films where the director is from the USA:

SELECT Film.Title
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN People ON Director.id = People.id
WHERE Director.Country = 'USA';

--Show only those films where the writer and the director are the same person:

SELECT Film.Title
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN People AS PeopleD ON Director.id = PeopleD.id
JOIN Writer ON Film.Writer_id = Writer.id
JOIN People AS PeopleW ON Writer.id = PeopleW.id
WHERE PeopleD.Name = PeopleW.Name;

--Show directors and film titles for films with a score of 8 or higher:

SELECT People.Name AS Director, Film.Title
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN People ON Director.id = People.id
WHERE Film.Score >= 8;

