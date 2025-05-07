-- Init

CREATE TABLE writers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL
  );
CREATE TABLE stars (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  birth DATE
  );
CREATE TABLE directors(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  country VARCHAR(100)
  );

CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  year INTEGER NOT NULL,
  genre VARCHAR(50),
  score INTEGER,
  director_id INTEGER NOT NULL,
  writer_id INTEGER NOT NULL,
  star_id INTEGER NOT NULL,
  CONSTRAINT director_fk FOREIGN KEY(director_id) REFERENCES directors(id),
  CONSTRAINT writer_fk FOREIGN KEY(writer_id) REFERENCES writers(id),
  CONSTRAINT star_fk FOREIGN KEY(star_id) REFERENCES stars(id)
  );

