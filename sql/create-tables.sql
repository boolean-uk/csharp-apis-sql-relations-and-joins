CREATE TABLE writers(
  id serial NOT NULL PRIMARY KEY,
  name varchar(50),
  email varchar(50)
);

CREATE TABLE stars(
  id serial NOT NULL PRIMARY KEY,
  name varchar(50),
  date_of_birth date
);

CREATE TABLE directors(
  id serial NOT NULL PRIMARY KEY,
  name varchar(50),
  country varchar(50)
);

CREATE TABLE movies(
  id serial NOT NULL PRIMARY KEY,
  writer_id int,
  star_id int,
  director_id int,
  title varchar(50),
  r_year int,
  genre varchar(20),
  score int,
  FOREIGN KEY (writer_id) REFERENCES writers(id),
  FOREIGN KEY (star_id) REFERENCES stars(id),
  FOREIGN KEY (director_id) REFERENCES directors(id)
);