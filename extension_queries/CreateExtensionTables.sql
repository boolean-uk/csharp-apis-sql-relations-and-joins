CREATE TABLE persons(
  personid SERIAL PRIMARY KEY,
  name VARCHAR(255),
  dob DATE
);

CREATE TABLE countries(
  name VARCHAR(255) PRIMARY KEY
)

CREATE TABLE genres(
  name VARCHAR(255) PRIMARY KEY
)


CREATE TABLE directors(
  directorid SERIAL,
  country VARCHAR(255),
  personid SERIAL,
  PRIMARY KEY(directorid),
  FOREIGN KEY(country) REFERENCES countries(name),
  FOREIGN KEY(personid) REFERENCES persons(personid)
 );

CREATE TABLE actors(
  actorid SERIAL,
  personid SERIAL,
  PRIMARY KEY(actorid),
  FOREIGN KEY(personid) REFERENCES persons(personid)
);

CREATE TABLE writers(
  writerid SERIAL,
  personid SERIAL,
  email VARCHAR(255),
  PRIMARY KEY(writerid),
  FOREIGN KEY(personid) REFERENCES persons(personid)
);

CREATE TABLE movies(
  movieid SERIAL,
  directorid SERIAL,
  writerid SERIAL,
  title VARCHAR(255),
  genre VARCHAR(255),
  score INTEGER,
  year INTEGER,
  PRIMARY KEY(movieid),
  FOREIGN KEY(directorid) REFERENCES directors (directorid),
  FOREIGN KEY(writerid) REFERENCES writers (writerid),
  FOREIGN KEY(genre) REFERENCES genres(name)
);

CREATE TABLE casts(
  movieid SERIAL,
  actorid SERIAL,
  FOREIGN KEY (movieid) REFERENCES movies(movieid),
  FOREIGN KEY (actorid) REFERENCES actors(actorid),
  PRIMARY KEY (movieid,actorid)
);
  