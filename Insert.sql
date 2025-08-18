--insert countries
INSERT INTO countries (country) VALUES ('USA');
INSERT INTO countries (country) VALUES ('Canada');
INSERT INTO countries (country) VALUES ('UK');
INSERT INTO countries (country) VALUES ('Greece');
INSERT INTO countries (country) VALUES ('Netherlands');
INSERT INTO countries (country) VALUES ('Poland');
INSERT INTO countries (country) VALUES ('France');

--insert roles
INSERT INTO roles (role) VALUES ('Director');
INSERT INTO roles (role) VALUES ('Star');
INSERT INTO roles (role) VALUES ('Writer');


--insert genres
INSERT INTO  genres (genre) VALUES ('Science Fiction');
INSERT INTO  genres (genre) VALUES ('Drama');
INSERT INTO  genres (genre) VALUES ('Romance');
INSERT INTO  genres (genre) VALUES ('Historical');
INSERT INTO  genres (genre) VALUES ('Thriller');



--insert directors
INSERT INTO people (name, country, dob, email, role) VALUES ('Stanley Kubrick', 1, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('George Lucas', 1, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('Robert Mulligan', 1, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('James Cameron', 2, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('David Lean', 3, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('Anthony Mann', 1, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('Theodoros Angelopoulos', 4, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('Paul Verhoeven', 5, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('Krzysztof Kieslowski', 6, null, null, 1);
INSERT INTO people (name, country, dob, email, role) VALUES ('Jean-Paul Rappeneau', 7, null, null, 1);

--insert stars
INSERT INTO people (name, country, dob, email, role) VALUES ('Keir Dullea', null, '1936-05-30', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Mark Hamill', null, '1951-09-25', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Gregory Peck', null, '1916-04-05', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Leonardo DiCaprio', null, '1974-11-11', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Julie Christie', null, '1940-04-14', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Charlton Heston', null, '1923-10-04', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Manos Katrakis', null, '1908-08-14', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Rutger Hauer', null, '1944-01-23', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Juliette Binoche', null, '1964-03-09', null, 2);
INSERT INTO people (name, country, dob, email, role) VALUES ('Gerard Depardieu', null, '1948-12-27', null, 2);
	

--insert writers
INSERT INTO people (name, country, dob, email, role) VALUES ('Arthur C Clarke', null, null, 'arthur@clarke.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('George Lucas', null, null, 'george@email.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('Harper Lee', null, null, 'harper@lee.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('James Cameron', null, null, 'james@cameron.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('Boris Pasternak', null, null, 'boris@boris.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('Frederick Frank', null, null, 'fred@frank.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('Theodoros Angelopoulos', null, null, 'theo@angelopoulos.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('Erik Hazelhoff Roelfzema', null, null, 'erik@roelfzema.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('Krzysztof Kieslowski', null, null, 'email@email.com', 3);
INSERT INTO people (name, country, dob, email, role) VALUES ('Edmond Rostand', null, null, 'edmond@rostand.com', 3);



--insert movies
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('2001: A Space Odyssey', 1, 1, 11, 11, 21, 21, 1968, 1, 10);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('Star Wars: A New Hope', 2, 2, 12, 12, 22, 22, 1977, 1, 7);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('To Kill A Mockingbird', 3, 3, 13, 13, 23, 23, 1962, 2, 10);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('Titanic', 4, 4, 14, 14, 24, 24, 1997, 3, 5);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('Dr Zhivago', 5, 5, 15, 15, 25, 25, 1965, 4, 8);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('El Cid', 6, 6, 16, 16, 26, 26, 1961, 4, 6);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('Voyage to Cythera', 7, 7, 17, 17, 27, 27, 1984, 2, 8);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('Soldier of Orange', 8, 8, 18, 18, 28, 28, 1977, 5, 8);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('Three Colours: Blue', 9, 9, 19, 19, 29, 29, 1993, 2, 8);
INSERT INTO  movies (title, director, director_country, star, dob, writer, email, year, genre, score ) VALUES ('Cyrano de Bergerac', 10, 10, 20, 20, 30, 30, 1990, 4, 9);
	