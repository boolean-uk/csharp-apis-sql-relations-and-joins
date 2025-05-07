CREATE TABLE directors(
director_id serial primary key,
director_name varchar(255),
country varchar(50)
);

CREATE TABLE stars(
star_id serial primary key,
star_name varchar(255),
date_of_birth date
);

CREATE TABLE writers(
writer_id serial primary key,
writer_name varchar(255),
email varchar(255)
);

CREATE TABLE films(
 film_id serial primary key,
 director_id integer references directors,
 star_id integer references stars,
 writer_id integer references writers,
 title varchar(255) not null,
 genre varchar(50) not null,
 release_year integer not null,
 score integer not null
);