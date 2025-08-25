CREATE TABLE People(
  id serial PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);


CREATE TABLE Directors(
  id serial PRIMARY KEY,
  person_id_fk serial NOT NULL,
  country VARCHAR (100) NOT NULL,
  FOREIGN KEY (person_id_fk) REFERENCES People(id)
);

CREATE TABLE Stars(
  id serial PRIMARY KEY,
  person_id_fk serial NOT NULL,
  birthdate DATE NOT NULL,
  FOREIGN KEY (person_id_fk) REFERENCES People(id)
);

CREATE TABLE Writers(
  id serial PRIMARY KEY,
  person_id_fk serial NOT NULL,
  email VARCHAR (100) NOT NULL,
  FOREIGN KEY (person_id_fk) REFERENCES People(id)
);

CREATE TABLE Films(
  id serial PRIMARY KEY,
  title VARCHAR (100) NOT NULL,
  director_id_fk serial NOT NULL,
  star_id_fk serial NOT NULL,
  writer_id_fk serial NOT NULL,
  releaseYear INT NOT NULL,
  genre VARCHAR (100) NOT NULL,
  score INTEGER NOT NULL,
  FOREIGN KEY (director_id_fk) REFERENCES Directors(id),
  FOREIGN KEY (star_id_fk) REFERENCES Stars(id),
  FOREIGN KEY (writer_id_fk) REFERENCES Writers(id)
);

CREATE TABLE FilmCast(
  id serial PRIMARY KEY,
  movie_id_fk serial NOT NULL,
  actor_id_fk serial NOT NULL,
  FOREIGN KEY (movie_id_fk) REFERENCES Films(id),
  FOREIGN KEY (actor_id_fk) REFERENCES People(id)
);

/* People */
INSERT INTO People
  (name)
VALUES
  ('Stanley Kubrick'),
  ('George Lucas'),
  ('Robert Mulligan'),
  ('James Cameron'),
  ('David Lean'),
  ('Anthony Mann'),
  ('Theodoros Angelopoulos'),
  ('Paul Verhoeven'),
  ('Krzysztof Kieslowski'),
  ('Jean-Paul Rappeneau'),
  ('Keir Dullea'),
  ('Mark Hamill'),
  ('Gregory Peck'),
  ('Leonardo DiCaprio'),
  ('Julie Christie'),
  ('Charlton Heston'),
  ('Manos Katrakis'),
  ('Rutger Hauer'),
  ('Juliette Binoche'),
  ('Gerard Depardieu'),
  ('Arthur C Clarke'),
  ('George Lucas'),
  ('Harper Lee'),
  ('Boris Pasternak'),
  ('Frederick Frank'),
  ('Erik Hazelhoff Roelfzema'),
  ('Edmond Rostand'),
  ('Kate Winslet'),
  ('Billy Zane'),
  ('Gary Lockwood'),
  ('Harrison Ford');
  
/* Directors */
INSERT INTO Directors 
  (person_id_fk, country)
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

/* Stars */
INSERT INTO Stars
  (person_id_fk, birthdate)
VALUES
  (11, '1936-05-30'),
  (12, '1951-09-25'),
  (13, '1916-04-05'),
  (14, '1974-11-11'),
  (15, '1940-04-14'),
  (16, '1923-10-04'),
  (17, '1908-08-14'),
  (18, '1944-01-23'),
  (19, '1964-03-09'),
  (20, '1948-12-27');

/* Writers */
INSERT INTO Writers
  (person_id_fk, email)
VALUES
  (21, 'arthur@clarke.com'),
  (22, 'george@email.com'),
  (23, 'harper@lee.com'),
  (4, 'james@cameron.com'),
  (24, 'boris@boris.com'),
  (25, 'fred@frank.com'),
  (7, 'theo@angelopoulos.com'),
  (26, 'erik@roelfzema.com'),
  (9, 'email@email.com'),
  (27, 'edmond@rostand.com');

/* Films */
INSERT INTO Films
  (title, director_id_fk, star_id_fk, writer_id_fk, releaseYear, genre, score)
VALUES
  ('2001: A Space Odyssey', 1, 1, 1, 1968, 'Science Fiction', 10),
  ('Star Wars: A New Hope', 2, 2, 2, 1977, 'Science Fiction', 7),
  ('To Kill A Mockingbird', 3, 3, 3, 1962,'Drama', 10),
  ('Titanic', 4, 4, 4, 1997,'Romance', 5),
  ('Dr Zhivago', 5, 5, 5, 1965,'Historical', 8),
  ('El Cid', 6, 6, 6, 1961,'Historical', 6),
  ('Voyage to Cythera', 7, 7, 7, 1984,'Drama', 8),
  ('Soldier of Orange', 8, 8, 8, 1977,'Thriller', 8),
  ('Three Colours: Blue', 9, 9, 9, 1993,'Drama', 8),
  ('Cyrano de Bergerac', 10, 10, 10, 1990,'Historical', 9);


INSERT INTO FilmCast
  (movie_id_fk, actor_id_fk)
VALUES
  (1, 11),
  (1, 30),
  (2, 12),
  (2, 31),
  (3, 13),
  (4, 14),
  (4, 28),
  (4, 29),
  (5, 15),
  (6, 16),
  (7, 17),
  (8, 18),
  (9, 19),
  (10, 20);