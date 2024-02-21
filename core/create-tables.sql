CREATE TABLE IF NOT EXISTS films (
	id SERIAL PRIMARY KEY,
	title VARCHAR NOT NULL,
	director_id INTEGER NOT NULL,
	star_id INTEGER NOT NULL,
	writer_id INTEGER NOT NULL,
	year INTEGER,
	genre TEXT,
	score INTEGER,
		FOREIGN KEY (director_id)
			REFERENCES director(id),
		FOREIGN KEY (star_id)
			REFERENCES star(id),
		FOREIGN KEY (writer_id)
			REFERENCES writer(id)
);

CREATE TABLE IF NOT EXISTS director (
	id SERIAL PRIMARY KEY,
	director_name VARCHAR,
	director_country VARCHAR
);

CREATE TABLE IF NOT EXISTS star (
	id SERIAL PRIMARY KEY,
	star_name VARCHAR,
	star_date_of_birth DATE
);

CREATE TABLE IF NOT EXISTS writer (
	id SERIAL PRIMARY KEY,
	writer_name VARCHAR,
	writer_email VARCHAR
);