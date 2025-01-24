DROP TABLE people;
DROP TABLE directors;
DROP TABLE Film;
DROP TABLE Casts;
create table people(
  id serial primary key,
  name varchar(255) not null,
  birth date,
  email varchar(255)
);
create table directors(
  id serial primary key,
  country varchar(255),
  personId int references people(id) not null
);
CREATE TABLE Film(
	id serial primary key,
	title VARCHAR(400) unique,
	genre VARCHAR(434),
	released int,
 	score int,
 	directorid int REFERENCES directors(id),
 	starId int references People(id) not null,
 	writerId int references People(id) not null
);
create table Casts(
  id serial primary key,
  personId int references people(id) not null,
  filmId int references Film(id) not null
);
