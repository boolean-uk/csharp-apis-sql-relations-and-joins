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
  
  

INSERT INTO stars (name, dob) VALUES ('Keir Dullea', '1936-05-30');
INSERT INTO stars (name, dob) VALUES ('Mark Hamill', '1951-09-25');
INSERT INTO stars (name, dob) VALUES ('Gregory Peck', '1916-04-05');
INSERT INTO stars (name, dob) VALUES ('Leonardo DiCaprio', '1974-11-11');
INSERT INTO stars (name, dob) VALUES ('Julie Christe', '1940-04-14');
INSERT INTO stars (name, dob) VALUES ('Charlton Heston', '1923-10-04');
INSERT INTO stars (name, dob) VALUES ('Manos Katrakis', '1908-08-14');
INSERT INTO stars (name, dob) VALUES ('Rutger Hauer', '1944-01-23');
INSERT INTO stars (name, dob) VALUES ('Juliette Binoche', '1964-03-09');
INSERT INTO stars (name, dob) VALUES ('Gerard Depardieu', '1948-12-27');



INSERT INTO directors (name, country) VALUES ('Stanley Kubrick', 'USA');
INSERT INTO directors (name, country) VALUES ('George Lucas', 'USA');
INSERT INTO directors (name, country) VALUES ('Robert Mulligan', 'USA');
INSERT INTO directors (name, country) VALUES ('James Cameron', 'Canada');
INSERT INTO directors (name, country) VALUES ('David Lean', 'UK');
INSERT INTO directors (name, country) VALUES ('Anthony Mann', 'USA');
INSERT INTO directors (name, country) VALUES ('Theodoros Angelopoulos', 'Greece');
INSERT INTO directors (name, country) VALUES ('Paul Verhoeven', 'Netherlands');
INSERT INTO directors (name, country) VALUES ('Krzysztof Kieslowski', 'Poland');
INSERT INTO directors (name, country) VALUES ('Jean-Paul Rappeneau', 'France');



INSERT INTO writers (name, email) VALUES ('Arthur C Clarke','arthur@clarke.com');
INSERT INTO writers (name, email) VALUES ('George Lucas','george@email.com');
INSERT INTO writers (name, email) VALUES ('Harper Lee','harper@lee.com');
INSERT INTO writers (name, email) VALUES ('James Cameron','james@cameron.com');
INSERT INTO writers (name, email) VALUES ('Boris Pasternak','boris@boris.com');
INSERT INTO writers (name, email) VALUES ('Frederick Frank','fred@frank.com');
INSERT INTO writers (name, email) VALUES ('Theodoros Angelopoulos','theo@angelopoulos.com');
INSERT INTO writers (name, email) VALUES ('Erik Hazelhoff Roelfzema','erik@roelfzema.com');
INSERT INTO writers (name, email) VALUES ('Krzysztof Kieslowski','email@email.com');
INSERT INTO writers (name, email) VALUES ('Edmond Rostand','edmond@rostand.com');



INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (1,1,1,'2001: A Space Odyssey','1968','Science Fiction', 10);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (2,2,2,'Star Wars: A New Hope','1977','Science Fiction', 7);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (3,3,3,'To Kill A Mockingbird','1962','Drama', 10);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (4,4,4,'Titanic','1997','Romance', 5);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (5,5,5,'Dr Zhivago','1965','Historical', 8);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (6,6,6,'El Cid','1961','Historical', 6);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (7,7,7,'Voyage to Cythera','1984','Drama', 8);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (8,8,8,'Soldier of Orange','1977','Thriller', 8);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (9,9,9,'Three Colours: Blue','1993','Drama', 8);
INSERT INTO movies (directorid, starid, writerid, title, year, genre, score)
VALUES (10,10,10,'Cyrano de Bergerac','1990','Historical', 9);