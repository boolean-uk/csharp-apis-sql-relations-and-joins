CREATE TABLE scores(
	id SERIAL PRIMARY KEY,
  score INT NOT NULL UNIQUE CHECK (score >= 0 AND score <= 10)
);

CREATE TABLE genres(
	id SERIAL PRIMARY KEY,
  genre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE release_years(
	id SERIAL PRIMARY KEY,
  release_year INT NOT NULL UNIQUE
);

--WRITER
CREATE TABLE writers(
	id SERIAL PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL CHECK (email LIKE '%@%')
);

--STAR--
CREATE TABLE star_dobs(
	id SERIAL PRIMARY KEY,
  birthdate DATE NOT NULL
);

CREATE TABLE stars(
 	id SERIAL PRIMARY KEY,
  dob_id INT REFERENCES star_dobs(id) NOT NULL,
	full_name VARCHAR(100)NOT NULL
);


--DIRECTORS--
CREATE TABLE countries(
	id SERIAL PRIMARY KEY,
  country VARCHAR(50) NOT NULL
);

CREATE TABLE directors(
  id SERIAL PRIMARY KEY,
  country_id INT REFERENCES countries(id) NOT NULL,
  full_name VARCHAR(100) NOT NULL
);

--movies--
CREATE TABLE films(
	id SERIAL PRIMARY KEY,
  director_id INT REFERENCES directors(id) NOT NULL,
  star_id INT REFERENCES stars(id) NOT NULL,
  writer_id INT REFERENCES writers(id) NOT NULL,
  year_id INT REFERENCES release_years(id) NOT NULL,
  genre_id INT REFERENCES genres(id) NOT NULL,
  score_id INT REFERENCES scores(id) NOT NULL,
  title VARCHAR(100) NOT NULL UNIQUE
);