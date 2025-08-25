

CREATE TABLE Directors(
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  country VARCHAR (100) NOT NULL
);

CREATE TABLE Stars(
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  birthdate DATE NOT NULL
);

CREATE TABLE Writers(
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  email VARCHAR (100) NOT NULL
);

CREATE TABLE Films(
  id serial PRIMARY KEY,
  title VARCHAR (100) NOT NULL,
  director_id_fk INT NOT NULL,
  star_id_fk INT NOT NULL,
  writer_id_fk INT NOT NULL,
  releaseYear INT NOT NULL,
  genre VARCHAR (100) NOT NULL,
  score INTEGER NOT NULL,
  FOREIGN KEY (director_id_fk) REFERENCES Directors(id),
  FOREIGN KEY (star_id_fk) REFERENCES Stars(id),
  FOREIGN KEY (writer_id_fk) REFERENCES Writers(id)
);

/* Directors */
INSERT INTO Directors 
  (name, country)
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

/* Stars */
INSERT INTO Stars
  (name, birthdate)
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

/* Writers */
INSERT INTO Writers
  (name, email)
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

/* 1 */
-- SELECT f.title, f.director_id_fk.name FROM Films f;
