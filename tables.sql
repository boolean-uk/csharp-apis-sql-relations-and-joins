

CREATE TABLE writers(
  id serial primary key,
  name VARCHAR(200) NOT NULL,
  email VARCHAR(200) NOT NULL

);

CREATE TABLE directors (
  id serial primary key,
  name VARCHAR(200) NOT NULL,
  country VARCHAR(200) NOT NULL

);

CREATE TABLE stars (
  id serial primary key,
  name VARCHAR(200) NOT NULL,
  dob VARCHAR(200) NOT NULL

);


CREATE TABLE films (
  id serial primary key,
  name VARCHAR(200) NOT NULL,
  genre VARCHAR(200) NOT NULL,
  year int NOT NULL,
  score int NOT NULL,
  directorid int NOT NULL,
  starid int NOT NULL,
  writerid int NOT NULL,
  
  FOREIGN KEY (directorid) REFERENCES directors(id),   -- Refererer til Director-tabellen
  FOREIGN KEY (starid) REFERENCES stars(id),           -- Refererer til Star-tabellen
  FOREIGN KEY (writerid) REFERENCES writers(id)

);


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
('Jean-Paul Rappeneau', 'France');


INSERT INTO writers (name, email) VALUES
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
('Gerard Depardieu', '1948-12-27');

INSERT INTO films (name, genre, year, score, directorid, starid, writerid) VALUES
('2001: A Space Odyssey', 'Science Fiction', 1968, 10, 1, 1, 1),
('Star Wars: A New Hope', 'Science Fiction', 1977, 7, 2, 2, 2),
('To Kill A Mockingbird', 'Drama', 1962, 10, 3, 3, 3),
('Titanic', 'Romance', 1997, 5, 4, 4, 4),
('Dr Zhivago', 'Historical', 1965, 8, 5, 5, 5),
('El Cid', 'Historical', 1961, 6, 6, 6, 6),
('Voyage to Cythera', 'Drama', 1984, 8, 7, 7, 7),
('Soldier of Orange', 'Thriller', 1977, 8, 8, 8, 8),
('Three Colours: Blue', 'Drama', 1993, 8, 9, 9, 9),
('Cyrano de Bergerac', 'Historical', 1990, 9, 10, 10, 10);
  