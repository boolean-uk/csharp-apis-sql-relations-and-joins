CREATE TABLE IF NOT EXISTS Directors(
  id SERIAL PRIMARY KEY,
  name TEXT,
  country TEXT
);

CREATE TABLE IF NOT EXISTS Stars(
  id SERIAL PRIMARY KEY,
  name TEXT,
  DOB TEXT
);

CREATE TABLE IF NOT EXISTS Writers(
  id SERIAL PRIMARY KEY,
  name TEXT,
  email TEXT
);

CREATE TABLE IF NOT EXISTS Films(
  id SERIAL PRIMARY KEY,
  title TEXT,
  year INT,
  genre TEXT,
  score INT,
  director_id INT,
  star_id INT,
  writer_id INT,

  CONSTRAINT fk_director
    FOREIGN KEY(director_id)
    REFERENCES Directors(id),
  CONSTRAINT fk_star
    FOREIGN KEY(star_id)
    REFERENCES Stars(id),
  CONSTRAINT fk_writer
    FOREIGN KEY(writer_id)
  	REFERENCES Writers(id)
);