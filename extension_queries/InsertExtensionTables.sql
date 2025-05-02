INSERT INTO persons (name, dob) VALUES ('Keir Dullea', '1936-05-30');
INSERT INTO persons (name, dob) VALUES ('Mark Hamill', '1951-09-25');
INSERT INTO persons (name, dob) VALUES ('Gregory Peck', '1916-04-05');
INSERT INTO persons (name, dob) VALUES ('Leonardo DiCaprio', '1974-11-11');
INSERT INTO persons (name, dob) VALUES ('Julie Christe', '1940-04-14');
INSERT INTO persons (name, dob) VALUES ('Charlton Heston', '1923-10-04');
INSERT INTO persons (name, dob) VALUES ('Manos Katrakis', '1908-08-14');
INSERT INTO persons (name, dob) VALUES ('Rutger Hauer', '1944-01-23');
INSERT INTO persons (name, dob) VALUES ('Juliette Binoche', '1964-03-09');
INSERT INTO persons (name, dob) VALUES ('Gerard Depardieu', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Martin', '2000-12-27');
INSERT INTO persons (name, dob) VALUES ('Arivd', '1998-02-23');
INSERT INTO persons (name, dob) VALUES ('Petter', '1989-01-27');
INSERT INTO persons (name, dob) VALUES ('Mattias', '1960-12-27');
INSERT INTO persons (name, dob) VALUES ('Nigel', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Stanley Kubrick', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('George Lucas', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Robert Mulligan', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('James Cameron', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('David Lean', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Anthony Mann', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Theodoros Angelopoulos', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Paul Verhoeven', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Krzysztof Kieslowski', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Jean-Paul Rappeneau', '1948-12-27');

INSERT INTO persons (name, dob) VALUES ('Arthur C Clarke', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Harper Lee', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('James Cameron', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Boris Pasternak', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Frederick Frank', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Erik Hazelhoff Roelfzema', '1948-12-27');
INSERT INTO persons (name, dob) VALUES ('Edmond Rostand', '1948-12-27');



  INSERT INTO casts (movieid, actorid) VALUES (1,1);
  INSERT INTO casts (movieid, actorid) VALUES (1,11);
  INSERT INTO casts (movieid, actorid) VALUES (1,12);
  
  INSERT INTO casts (movieid, actorid) VALUES (2,2);
  INSERT INTO casts (movieid, actorid) VALUES (2,13);
  
  INSERT INTO casts (movieid, actorid) VALUES (3,3);
  
  INSERT INTO casts (movieid, actorid) VALUES (4,4);
  INSERT INTO casts (movieid, actorid) VALUES (4,14);
  INSERT INTO casts (movieid, actorid) VALUES (4,15);
  
  INSERT INTO casts (movieid, actorid) VALUES (5,5);
  
  INSERT INTO casts (movieid, actorid) VALUES (6,6);
  
  INSERT INTO casts (movieid, actorid) VALUES (7,7);
  
  INSERT INTO casts (movieid, actorid) VALUES (8,8);
  
  INSERT INTO casts (movieid, actorid) VALUES (9,9);
  
  INSERT INTO casts (movieid, actorid) VALUES (10,10);
  INSERT INTO casts (movieid, actorid) VALUES (10,11);
  INSERT INTO casts (movieid, actorid) VALUES (10,12);
  INSERT INTO casts (movieid, actorid) VALUES (10,13);
  
  

  
  INSERT INTO genres (name) VALUES ('Science Fiction');
  INSERT INTO genres (name) VALUES ('Drama');
  INSERT INTO genres (name) VALUES ('Romance');
  INSERT INTO genres (name) VALUES ('Historical');
  INSERT INTO genres (name) VALUES ('Thriller');
  
  
  
  INSERT INTO countries (name) VALUES ('USA');
  INSERT INTO countries (name) VALUES ('Canada');
  INSERT INTO countries (name) VALUES ('UK');
  INSERT INTO countries (name) VALUES ('Greece');
  INSERT INTO countries (name) VALUES ('Netherlands');
  INSERT INTO countries (name) VALUES ('Poland');
  INSERT INTO countries (name) VALUES ('France');
  

INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (1,1,'2001: A Space Odyssey','1968','Science Fiction', 10);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (2,2,'Star Wars: A New Hope','1977','Science Fiction', 7);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (3,3,'To Kill A Mockingbird','1962','Drama', 10);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (4,4,'Titanic','1997','Romance', 5);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (5,5,'Dr Zhivago','1965','Historical', 8);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (6,6,'El Cid','1961','Historical', 6);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (7,7,'Voyage to Cythera','1984','Drama', 8);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (8,8,'Soldier of Orange','1977','Thriller', 8);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (9,9,'Three Colours: Blue','1993','Drama', 8);
INSERT INTO movies (directorid, writerid, title, year, genre, score)
VALUES (10,10,'Cyrano de Bergerac','1990','Historical', 9);

--stars
INSERT INTO actors (personid) VALUES (1);
INSERT INTO actors (personid) VALUES (2);
INSERT INTO actors (personid) VALUES (3);
INSERT INTO actors (personid) VALUES (4);
INSERT INTO actors (personid) VALUES (5);
INSERT INTO actors (personid) VALUES (6);
INSERT INTO actors (personid) VALUES (7);
INSERT INTO actors (personid) VALUES (8);
INSERT INTO actors (personid) VALUES (9);
INSERT INTO actors (personid) VALUES (10);
--actors
INSERT INTO actors (personid) VALUES (11);
INSERT INTO actors (personid) VALUES (12);
INSERT INTO actors (personid) VALUES (13);
INSERT INTO actors (personid) VALUES (14);
INSERT INTO actors (personid) VALUES (15);

INSERT INTO directors (personid, country) VALUES (16, 'USA');
INSERT INTO directors (personid, country) VALUES (17, 'USA');
INSERT INTO directors (personid, country) VALUES (18, 'USA');
INSERT INTO directors (personid, country) VALUES (19, 'Canada');
INSERT INTO directors (personid, country) VALUES (20, 'UK');
INSERT INTO directors (personid, country) VALUES (21, 'USA');
INSERT INTO directors (personid, country) VALUES (22, 'Greece');
INSERT INTO directors (personid, country) VALUES (23, 'Netherlands');
INSERT INTO directors (personid, country) VALUES (24, 'Poland');
INSERT INTO directors (personid, country) VALUES (25, 'France');

INSERT INTO writers (personid, email) VALUES (26,'arthur@clarke.com');
INSERT INTO writers (personid, email) VALUES (17,'george@email.com');
INSERT INTO writers (personid, email) VALUES (27,'harper@lee.com');
INSERT INTO writers (personid, email) VALUES (28,'james@cameron.com');
INSERT INTO writers (personid, email) VALUES (29,'boris@boris.com');
INSERT INTO writers (personid, email) VALUES (30,'fred@frank.com');
INSERT INTO writers (personid, email) VALUES (22,'theo@angelopoulos.com');
INSERT INTO writers (personid, email) VALUES (31,'erik@roelfzema.com');
INSERT INTO writers (personid, email) VALUES (24,'email@email.com');
INSERT INTO writers (personid, email) VALUES (32,'edmond@rostand.com');
