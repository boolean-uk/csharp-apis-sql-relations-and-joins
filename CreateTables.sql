DROP TABLE IF EXISTS films;

CREATE TABLE films(
id serial PRIMARY KEY,
title VARCHAR(255) not null UNIQUE ,
genre VARCHAR(255) not null,
release_year int not null,
score int not null CHECK (score >= 0 and score <= 10),
star_fk int NOT NULL,
writer_fk int NOT NULL,
director_fk int NOT NULL
);

insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('2001: A Space Odyssey', 'Science Fiction', 1968, 10, 1, 1, 1);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('Star Wars: A New Hope', 'Science Fiction', 1977, 7, 2, 2, 2);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('To Kill A Mockingbird', 'Drama', 1962, 10, 3, 3, 3);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('Titanic', 'Romance', 1997, 5, 4, 4, 4);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('Dr Zhivago', 'Historical', 1965, 8, 5, 5, 5);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('El Cid', 'Historical', 1961, 6, 6, 6, 6);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('Voyage to Cythera', 'Drama', 1984, 8, 7, 7, 7);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('Soldier of Orange' , 'Thriller', 1977, 8, 8, 8, 8);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('Three Colours: Blue', 'Drama', 1993, 8, 9, 9, 9);
insert into films(title, genre, release_year, score, star_fk, writer_fk, director_fk)
values ('Cyrano de Bergerac', 'Historical', 1990, 9, 10, 10, 10);


DROP TABLE IF EXISTS stars;

CREATE TABLE stars(
id serial PRIMARY KEY,
name_star VARCHAR(255) not null,
dateOfBirth DATE not NULL
);
insert into stars(name_star, dateOfBirth) values ('Keir Dullea', '1936-05-30');		  --1
insert into stars(name_star, dateOfBirth) values ('Mark Hamill', '1951-09-25');		  --2
insert into stars(name_star, dateOfBirth) values ('Gregory Peck', '1916-04-05');	  --3
insert into stars(name_star, dateOfBirth) values ('Leonardo DiCaprio', '1974-11-11'); --4
insert into stars(name_star, dateOfBirth) values ('Julie Christie', '1940-04-14');    --5
insert into stars(name_star, dateOfBirth) values ('Charlton Heston', '1923-10-04');	  --6
insert into stars(name_star, dateOfBirth) values ('Manos Katrakis', '1908-08-14');	  --7
insert into stars(name_star, dateOfBirth) values ('Rutger Hauer', '1944-01-23');	  --8
insert into stars(name_star, dateOfBirth) values ('Juliette Binoche', '1964-03-09');  --9
insert into stars(name_star, dateOfBirth) values ('Juliette Binoche', '1948-12-27');  --10


DROP TABLE IF EXISTS writers;

CREATE TABLE writers(
id serial PRIMARY KEY,
name_writer VARCHAR(255) not null,
email VARCHAR(255) not NULL
);

insert into writers(name_writer, email) values ('Arthur C Clarke', 'arthur@clarke.com'); --1
insert into writers(name_writer, email) values ('George Lucas', 'george@email.com'); --2
insert into writers(name_writer, email) values ('Harper Lee', 'harper@lee.com'); --3
insert into writers(name_writer, email) values ('James Cameron', 'james@cameron.com'); --4
insert into writers(name_writer, email) values ('Boris Pasternak', 'boris@boris.com'); --5
insert into writers(name_writer, email) values ('Frederick Frank', 'fred@frank.com'); --6
insert into writers(name_writer, email) values ('Theodoros Angelopoulos', 'theo@angelopoulos.com'); --7
insert into writers(name_writer, email) values ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'); --8
insert into writers(name_writer, email) values ('Krzysztof Kieslowsk', 'email@email.com'); --9
insert into writers(name_writer, email) values ('Edmond Rostand', 'edmond@rostand.com'); --10


DROP TABLE IF EXISTS directors;

CREATE TABLE directors(
id serial PRIMARY KEY,
name_director VARCHAR(255) not null,
country VARCHAR(255) not NULL
);

insert into directors(name_director, country) values ('Stanley Kubrick', 'USA');--1
insert into directors(name_director, country) values ('George Lucas', 'USA');--2
insert into directors(name_director, country) values ('Robert Mulligan', 'USA');--3
insert into directors(name_director, country) values ('James Cameron', 'Canada');--4
insert into directors(name_director, country) values ('David Lean', 'UK');--5
insert into directors(name_director, country) values ('Anthony Mann', 'USA');--6
insert into directors(name_director, country) values ('Theodoros Angelopoulos', 'Greece');--7
insert into directors(name_director, country) values ('Paul Verhoeven', 'Netherlands');--8
insert into directors(name_director, country) values ('Krzysztof Kieslowski', 'Poland');--9
insert into directors(name_director, country) values ('Jean-Paul Rappeneau', 'France');--10
