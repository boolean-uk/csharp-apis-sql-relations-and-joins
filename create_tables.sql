create table people(
  id serial primary key,
  name varchar(255) not null,
  dob date,
  email varchar(255)
);

create table directors(
  id serial primary key,
  country varchar(255),
  personId int references people(id) not null,
);


create table films(
 id serial primary key,
 title varchar(255) not null unique,
 release_year int not null,
 score int not null,
 directorId int references directors(id) not null,
 starId int references people(id) not null,
 writerId int references people(id) not null,
 genreId int references genre(id) not null
);


create table genres(
  id serial primary key,
  name varchar(255) not null unique,
);

create table cast(
  id serial primary key,
  personId int references people(id) not null,
  filmId int references films(id) not null
);

