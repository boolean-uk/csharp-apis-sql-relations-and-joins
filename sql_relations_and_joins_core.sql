DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS directors CASCADE;
DROP TABLE IF EXISTS stars CASCADE;
DROP TABLE IF EXISTS writers CASCADE;


CREATE TABLE directors (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(255),
);

CREATE TABLE stars (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(255),
	"date_of_birth" DATE
);

CREATE TABLE writers (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(255),
	"email" VARCHAR(255)
);


CREATE TABLE films (
	"id" SERIAL PRIMARY KEY,
	"director_id" INT,
	"star_id" INT,
	"writer_id" INT,
	"title" VARCHAR(255),
	"genre" VARCHAR(50),
	"release_year" INT,
	"score" INT
);

ALTER TABLE films ADD FOREIGN KEY ("director_id") REFERENCES directors("id");
ALTER TABLE films ADD FOREIGN KEY ("star_id") REFERENCES stars("id");
ALTER TABLE films ADD FOREIGN KEY ("writer_id") REFERENCES writers("id");


INSERT INTO directors (name) VALUES ('Stanley Kubrick');
INSERT INTO directors (name) VALUES ('George Lucas');
INSERT INTO directors (name) VALUES ('Robert Mulligan');
INSERT INTO directors (name) VALUES ('James Cameron');
INSERT INTO directors (name) VALUES ('David Lean');
INSERT INTO directors (name) VALUES ('Anthony Mann');
INSERT INTO directors (name) VALUES ('Theodoros Angelopoulos');
INSERT INTO directors (name) VALUES ('Paul Verhoeven');
INSERT INTO directors (name) VALUES ('Krzysztof Kieslowski');
INSERT INTO directors (name) VALUES ('Jean-Paul Rappeneau');

INSERT INTO stars (name, date_of_birth) VALUES ('Keir Dullea', '1936-05-30');
INSERT INTO stars (name, date_of_birth) VALUES ('Mark Hamill', '1951-09-25');
INSERT INTO stars (name, date_of_birth) VALUES ('Gregory Peck', '1916-04-05');
INSERT INTO stars (name, date_of_birth) VALUES ('Leonardo DiCaprio', '1974-11-11');
INSERT INTO stars (name, date_of_birth) VALUES ('Julie Christie', '1940-04-14');
INSERT INTO stars (name, date_of_birth) VALUES ('Charlton Heston', '1923-10-04');
INSERT INTO stars (name, date_of_birth) VALUES ('Manos Katrakis', '1908-08-14');
INSERT INTO stars (name, date_of_birth) VALUES ('Rutger Hauer', '1944-01-23');
INSERT INTO stars (name, date_of_birth) VALUES ('Juliette Binoche', '1964-03-09');
INSERT INTO stars (name, date_of_birth) VALUES ('Gerard Depardieu', '1948-12-27');

INSERT INTO writers (name, email) VALUES ('Arthur C Clarke', 'arthur@clarke.com');
INSERT INTO writers (name, email) VALUES ('George Lucas', 'george@email.com');
INSERT INTO writers (name, email) VALUES ('Harper Lee', 'harper@lee.com');
INSERT INTO writers (name, email) VALUES ('James Cameron', 'james@cameron.com');
INSERT INTO writers (name, email) VALUES ('Boris Pasternak', 'boris@boris.com');
INSERT INTO writers (name, email) VALUES ('Frederick Frank', 'fred@frank.com');
INSERT INTO writers (name, email) VALUES ('Theodoros Angelopoulos', 'theo@angelopoulos.com');
INSERT INTO writers (name, email) VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com');
INSERT INTO writers (name, email) VALUES ('Krzysztof Kieslowski', 'email@email.com');
INSERT INTO writers (name, email) VALUES ('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('2001: A Space Odyssey', 1, 1, 1, 'Science Fiction', 1968, 10);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('Star Wars: A New Hope', 2, 2, 2, 'Science Fiction', 1977, 7);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('To Kill A Mockingbird', 3, 3, 3, 'Drama', 1962, 10);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('Titanic', 4, 4, 4, 'Romance', 1997, 5);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('Dr Zhivago', 5, 5, 5, 'Historical', 1965, 8);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('El Cid', 6, 6, 6, 'Historical', 1961, 6);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('Voyage to Cythera', 7, 7, 7, 'Drama', 1984, 8);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('Soldier of Orange', 8, 8, 8, 'Thriller', 1977, 8);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('Three Colours: Blue', 9, 9, 9, 'Drama', 1993, 8);
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score) VALUES ('Cyrano de Bergerac', 10, 10, 10, 'Historical', 1990, 9);

