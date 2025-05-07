CREATE TABLE director(
  id SERIAL PRIMARY KEY,
  name VARCHAR(32),
  country VARCHAR(32)
);
CREATE TABLE star(
  id SERIAL PRIMARY KEY,
	name VARCHAR(32),
  date_of_birth DATE
);
CREATE TABLE writer(
  id SERIAL PRIMARY KEY,
  name VARCHAR(32),
  email VARCHAR(32)
);
CREATE TABLE film(
  id SERIAL PRIMARY KEY,
  title VARCHAR(32) UNIQUE NOT NULL,
  genre VARCHAR(32),
  director_id INT REFERENCES director(id),
  star_id INT REFERENCES star(id),
  writer_id INT REFERENCES writer(id),
  year INT,
	score INT
);