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
people_fk int not null,
dateOfBirth date not null

);
insert into stars(people_fk, dateOfBirth) values (1, '1936-05-30');	
insert into stars(people_fk, dateOfBirth) values (2, '1951-09-25');	
insert into stars(people_fk, dateOfBirth) values (3, '1916-04-05');
insert into stars(people_fk, dateOfBirth) values (4, '1974-11-11');
insert into stars(people_fk, dateOfBirth) values (5, '1940-04-14'); 
insert into stars(people_fk, dateOfBirth) values (6, '1923-10-04');
insert into stars(people_fk, dateOfBirth) values (7, '1908-08-14');
insert into stars(people_fk, dateOfBirth) values (8, '1944-01-23');
insert into stars(people_fk, dateOfBirth) values (9, '1964-03-09');
insert into stars(people_fk, dateOfBirth) values (10, '1948-12-27');


DROP TABLE IF EXISTS writers;

CREATE TABLE writers(
id serial PRIMARY KEY,
people_fk int not null,
email varchar(255) not null
);

insert into writers(people_fk, email) values (11, 'arthur@clarke.com'); 
insert into writers(people_fk, email) values (12, 'george@email.com'); 
insert into writers(people_fk, email) values (13, 'harper@lee.com'); 
insert into writers(people_fk, email) values (14, 'james@cameron.com'); 
insert into writers(people_fk, email) values (15, 'boris@boris.com'); 
insert into writers(people_fk, email) values (16, 'fred@frank.com'); 
insert into writers(people_fk, email) values (17, 'theo@angelopoulos.com'); 
insert into writers(people_fk, email) values (18, 'erik@roelfzema.com'); 
insert into writers(people_fk, email) values (19, 'email@email.com'); 
insert into writers(people_fk, email) values (20, 'edmond@rostand.com'); 


DROP TABLE IF EXISTS directors;

CREATE TABLE directors(
id serial PRIMARY KEY,
people_fk int not null,
country varchar(255) not null
);

insert into directors(people_fk, country) values(21, 'USA');
insert into directors(people_fk, country) values(12, 'USA');
insert into directors(people_fk, country) values(22, 'USA');
insert into directors(people_fk, country) values(14, 'Canada');
insert into directors(people_fk, country) values(23, 'UK');
insert into directors(people_fk, country) values(24, 'USA');
insert into directors(people_fk, country) values(17, 'Greece');
insert into directors(people_fk, country) values(25, 'Netherlands');
insert into directors(people_fk, country) values(19, 'Poland');
insert into directors(people_fk, country) values(26, 'France');


DROP TABLE IF EXISTS people;

CREATE TABLE people(
id serial PRIMARY KEY,
theName varchar(255) not null
);
--stars
insert into people(theName) values ('Keir Dullea');              --1
insert into people(theName) values ('Mark Hamill');				 --2
insert into people(theName) values ('Gregory Peck');			 --3
insert into people(theName) values ('Leonardo DiCaprio');		 --4
insert into people(theName) values ('Julie Christie'); 			 --5
insert into people(theName) values ('Charlton Heston');			 --6
insert into people(theName) values ('Manos Katrakis'); 			 --7
insert into people(theName) values ('Rutger Hauer');			 --8
insert into people(theName) values ('Juliette Binoche');		 --9
insert into people(theName) values ('Gerard Depardieu');		 --10
																 --
--writers														 --
insert into people(theName) values ('Arthur C Clarke');			 --11
insert into people(theName) values ('George Lucas');			 --12
insert into people(theName) values ('Harper Lee');				 --13
insert into people(theName) values ('James Cameron');			 --14
insert into people(theName) values ('Boris Pasternak');			 --15
insert into people(theName) values ('Frederick Frank');			 --16
insert into people(theName) values ('Theodoros Angelopoulos');	 --17
insert into people(theName) values ('Erik Hazelhoff Roelfzema'); --18
insert into people(theName) values ('Krzysztof Kieslowfk');		 --19
insert into people(theName) values ('Edmond Rostand');			 --20
																 --
--dirtectors													 --
insert into people(theName) values ('Stanley Kubrick');			 --21
insert into people(theName) values ('Robert Mulligan');			 --22
insert into people(theName) values ('David Lean');				 --23
insert into people(theName) values ('Anthony Mann');			 --24
insert into people(theName) values ('Paul Verhoeven');			 --25
insert into people(theName) values ('Jean-Paul Rappeneau');		 --26