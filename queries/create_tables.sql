




CREATE TABLE persons(
	id serial PRIMARY KEY,
	name varchar(55) NOT NULL
);

CREATE TABLE date_of_births(
	id serial int IDENTITY PRIMARY KEY,
	birth_date date NOT NULL,
	person_id int NOT NULL, 
	CONSTRAINT fk_persons_id FOREIGN KEY (person_id) REFERENCES persons(id),
	UNIQUE(person_id)
);


CREATE TABLE countries(
	id serial PRIMARY KEY,
	countryname VARCHAR(55) NOT NULL,
	UNIQUE(countryname)
);

CREATE TABLE emails(
	id serial PRIMARY KEY,
	email_str VARCHAR(256) NOT NULL,
	person_id int NOT NULL, 
	CONSTRAINT fk_persons_id FOREIGN KEY (person_id) REFERENCES persons(id),
	UNIQUE(person_id)
);

CREATE TABLE home_countries(
	id serial PRIMARY KEY,
	countries_id int NOT NULL,
	person_id int NOT NULL, 
	CONSTRAINT fk_persons_id FOREIGN KEY (person_id) REFERENCES persons(id),
	constraint fk_countriesid FOREIGN KEY (countries_id) REFERENCES countries(id),
	UNIQUE(person_id)
);

CREATE TABLE movie_director(
	id serial PRIMARY KEY,
	persons_id int NOT NULL,
	FOREIGN KEY (persons_id) REFERENCES persons(id),
	UNIQUE(persons_id)
);

CREATE TABLE movie_star(
	id serial PRIMARY KEY,
	persons_id int NOT NULL,
	FOREIGN KEY (persons_id) REFERENCES persons(id),
	UNIQUE(persons_id)
);

CREATE TABLE movie_writer(
	id serial PRIMARY KEY,
	persons_id int NOT NULL,
	FOREIGN KEY (persons_id) REFERENCES persons(id),
	UNIQUE(persons_id)
);


CREATE TABLE genres(
	id serial PRIMARY KEY,
	genre_name varchar(128),
	UNIQUE(genre_name)
);


CREATE TABLE movies(
	id serial PRIMARY KEY,
	title VARCHAR(256) NOT NULL,
	release_year int NOT NULL, 
	score int NOT NULL CHECK(score <= 10 AND score >= 0),
	director_id int NOT NULL,
	movie_star_id int NOT NULL,
	writer_id int NOT NULL,
	FOREIGN KEY (director_id) REFERENCES movie_director(id),  
	FOREIGN KEY (movie_star_id) REFERENCES movie_star(id),  
	FOREIGN KEY (writer_id) REFERENCES movie_writer(id),
	UNIQUE(title, director_id, writer_id, movie_star_id)
);


CREATE TABLE genres_for_movies(
	id serial PRIMARY KEY,
	movies_id int NOT NULL,
	genre_id int NOT NULL,
	CONSTRAINT fk_movies_id FOREIGN KEY (movies_id) REFERENCES movies(id),
	CONSTRAINT fk_genre_id FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE TABLE cast_in_movies(
	id serial PRIMARY KEY,
	movies_id int NOT NULL, 
	persons_id int NOT NULL,
	FOREIGN KEY (movies_id) REFERENCES movies(id),   
	FOREIGN KEY (persons_id) REFERENCES persons(id),
	UNIQUE(movies_id, persons_id)
);





