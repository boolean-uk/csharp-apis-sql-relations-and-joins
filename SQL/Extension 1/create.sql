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

CREATE TABLE IF NOT EXISTS People (
    id SERIAL PRIMARY KEY,
    director_id INT,
    star_id INT,
 	writer_id INT,
	FOREIGN KEY (director_id) REFERENCES Directors(id),
    FOREIGN KEY (star_id) REFERENCES Stars(id),
    FOREIGN KEY (writer_id) REFERENCES Writers(id)
);

CREATE TABLE IF NOT EXISTS Films(
  id SERIAL PRIMARY KEY,
  title TEXT,
  year INT,
  genre TEXT,
  score INT,
  people_id INT,
  UNIQUE(title),
  CONSTRAINT fk_people_id
  FOREIGN KEY(people_id)
  REFERENCES People(id)
  );