CREATE TABLE countries(
  name VARCHAR(255) PRIMARY KEY
);

CREATE TABLE genres(
  name VARCHAR(255) PRIMARY KEY
);

CREATE TABLE directors(
  directorid SERIAL,
  name VARCHAR(255),
  country VARCHAR(255),
  PRIMARY KEY(directorid),
  FOREIGN KEY(country) REFERENCES countries(name)
);


CREATE TABLE stars(
  starid SERIAL,
  name VARCHAR(255),
  dob date,
  PRIMARY KEY(starid)
);



CREATE TABLE writers(
  writerid SERIAL,
  email VARCHAR(255),
  name VARCHAR(255),
  PRIMARY KEY(writerid)
);
 
 
 
CREATE TABLE movies(
  movieid SERIAL,
  directorid SERIAL,
  writerid SERIAL,
  starid SERIAL,
  title VARCHAR(255),
  genre VARCHAR(255),
  score INTEGER,
  year INTEGER,
  PRIMARY KEY(movieid),
  FOREIGN KEY(directorid) REFERENCES directors (directorid),
  FOREIGN KEY(writerid) REFERENCES writers (writerid),
  FOREIGN KEY(starid) REFERENCES stars (starid),
  FOREIGN KEY(genre) REFERENCES genres(name)
);