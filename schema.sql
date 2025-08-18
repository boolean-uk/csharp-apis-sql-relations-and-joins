CREATE TABLE roles (
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL
);

CREATE TABLE countries (
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL
);

CREATE TABLE persons (
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  dob DATE NULL,
  email VARCHAR (100) NULL,
  country_fk INTEGER,
  FOREIGN KEY (country_fk) REFERENCES countries(id)
);

CREATE TABLE personsrole (
  id serial PRIMARY KEY,
  person_fk INTEGER NOT NULL,
  role_fk INTEGER NOT NULL,
  FOREIGN KEY (person_fk) REFERENCES persons(id),
  FOREIGN KEY (role_fk) REFERENCES roles(id)
);

CREATE TABLE genres (
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL
);

CREATE TABLE movies (
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  director_fk INTEGER NOT NULL,
  star_fk INTEGER NOT NULL,
  writer_fk INTEGER NOT NULL,
  year INTEGER NOT NULL,
  genre_fk INTEGER NOT NULL,
  score INTEGER NOT NULL,
  FOREIGN KEY (director_fk) REFERENCES persons(id),
  FOREIGN KEY (star_fk) REFERENCES persons(id),
  FOREIGN KEY (writer_fk) REFERENCES persons(id),
  FOREIGN KEY (genre_fk) REFERENCES genres(id)
);



INSERT INTO roles (name) VALUES ('director'), ('star'), ('writer');

INSERT INTO countries (name) VALUES ('USA'), ('Canada'), ('UK'), ('Greece'), ('Netherlands'), ('Poland'), ('France');

INSERT INTO genres (name) VALUES ('Science Fiction'), ('Drama'), ('Romance'), ('Historical'), ('Thriller');

-- Directors/writers
INSERT INTO persons (name, country_fk) VALUES ('Stanley Kubrick', 1); 
INSERT INTO persons (name, country_fk, email) VALUES ('George Lucas', 1, 'george@email.com'); 
INSERT INTO persons (name, country_fk) VALUES ('Robert Muligan', 1); 
INSERT INTO persons (name, country_fk, email) VALUES ('James Cameron', 2, 'james@cameron.com');
INSERT INTO persons (name, country_fk) VALUES ('David Lean', 3);
INSERT INTO persons (name, country_fk) VALUES ('Anthony Mann', 1);
INSERT INTO persons (name, country_fk, email) VALUES ('Theodoros Angelopoulos', 4, 'theo@angelopoulos.com');
INSERT INTO persons (name, country_fk) VALUES ('Paul Verhoeven', 5);
INSERT INTO persons (name, country_fk, email) VALUES ('Krzysztof Kieslowski', 6, 'email@email.com');
INSERT INTO persons (name, country_fk) VALUES ('Jean-Paul Rappeneau', 7);

-- Stars
INSERT INTO persons (name, dob) VALUES ('Keir Dullea', '1936-05-30');
INSERT INTO persons (name, dob) VALUES ('Mark Hamill', '1951-09-25');
INSERT INTO persons (name, dob) VALUES ('Gregory Peck', '1926-04-05');
INSERT INTO persons (name, dob) VALUES ('Leonardo DiCaprio', '1974-11-11');
INSERT INTO persons (name, dob) VALUES ('Julie Christie', '1940-04-14');
INSERT INTO persons (name, dob) VALUES ('Charlton Heston', '1923-10-04');
INSERT INTO persons (name, dob) VALUES ('Manos Katrakis', '1908-08-14');
INSERT INTO persons (name, dob) VALUES ('Rutger Hauer', '1944-01-23');
INSERT INTO persons (name, dob) VALUES ('Juliette Binoche', '1964-03-09');
INSERT INTO persons (name, dob) VALUES ('Gerard Depardieu', '1948-12-27');

-- Writers
INSERT INTO persons (name, email) VALUES ('Arthur C Clarke', 'arthur@clarke.com');
INSERT INTO persons (name, email) VALUES ('Harper Lee', 'harper@lee.com');
INSERT INTO persons (name, email) VALUES ('Boris Pasternak', 'boris@boris.com');
INSERT INTO persons (name, email) VALUES ('Frederick Frank', 'fred@frank.com');
INSERT INTO persons (name, email) VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com');
INSERT INTO persons (name, email) VALUES ('Edmond Rostand', 'edmond@rostand.com');

--Persons-Roles
-- Directors/Writers
INSERT INTO personsrole (person_fk, role_fk) VALUES (1,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (2,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (2,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (3,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (4,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (4,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (5,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (6,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (7,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (7,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (8,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (9,1);
INSERT INTO personsrole (person_fk, role_fk) VALUES (9,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (10,1);
-- Stars
INSERT INTO personsrole (person_fk, role_fk) VALUES (11,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (12,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (13,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (14,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (15,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (16,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (17,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (18,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (19,2);
INSERT INTO personsrole (person_fk, role_fk) VALUES (20,2);
--Writers
INSERT INTO personsrole (person_fk, role_fk) VALUES (21,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (22,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (23,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (24,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (25,3);
INSERT INTO personsrole (person_fk, role_fk) VALUES (26,3);



--Movies
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('2001: Aspace Odyssey', 1, 11, 21, 1968, 1, 10);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('Star Wars: A New Hope', 2, 12, 2, 1977, 1, 7);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('To Kill A Mockingbird', 3, 13, 22, 1962, 2, 10);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('Titanic', 4, 14, 4, 1997, 3, 5);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('Dr Zhivago', 5, 15, 23, 1965, 4, 8);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('El Cid', 6, 16, 24, 1961, 4, 6);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('Voyage to Cythera', 7, 17, 7, 1984, 2, 8);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('Soldier of Orange', 8, 18, 25, 1977, 5, 8);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('Three Colours: Blue', 9, 19, 9, 1993, 2, 8);
INSERT INTO movies (name, director_fk, star_fk, writer_fk, year, genre_fk, score) VALUES ('Cyrano de Bergerac', 10, 20, 26, 1990, 4, 9);















