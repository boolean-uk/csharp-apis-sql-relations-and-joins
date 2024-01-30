-- Create Director table
CREATE TABLE director (
	id serial primary key,
	name varchar(255) NOT NULL,
	country varchar(128)
);

-- Create Star table
CREATE TABLE star (
	id serial primary key,
	name varchar(255) NOT NULL,
	dob date
); 

-- Create Writer table
CREATE TABLE writer (
	id serial primary key,
	name varchar(255) NOT NULL,
	email varchar(255)
); 

-- Create Film table
CREATE TABLE movie (
	id serial primary key,
	title varchar(255) NOT NULL,
	year integer NOT NULL,
	genre varchar(255) NOT NULL,
	score integer CHECK(score >= 0 AND score <= 10),
	director_id_fk integer, 
	star_id_fk integer,
	writer_id_fk integer,
	CONSTRAINT director_id_fk 
		FOREIGN KEY(director_id_fk)
			REFERENCES director(id),
	CONSTRAINT star_id_fk
		FOREIGN KEY(star_id_fk)
			REFERENCES star(id),
	CONSTRAINT writer_id_fk
		FOREIGN KEY(writer_id_fk)
			REFERENCES writer(id)
);

-- Director-movie joining table
CREATE TABLE director_movie (
	movie_id integer NOT NULL,
	director_id integer NOT NULL,
	CONSTRAINT movie_fk 
		FOREIGN KEY(movie_id)
			REFERENCES movie(id),
	CONSTRAINT director_fk
		FOREIGN KEY(director_id)
			REFERENCES director(id)
);

-- Star-movie joining table
CREATE TABLE star_movie (
	movie_id integer NOT NULL,
	writer_id integer NOT NULL,
	CONSTRAINT movie_fk 
		FOREIGN KEY(movie_id)
			REFERENCES movie(id),
	CONSTRAINT writer_id_fk
		FOREIGN KEY(writer_id)
			REFERENCES writer(id)
);

-- Star-movie joining table
CREATE TABLE star_movie (
	movie_id integer NOT NULL,
	star_id integer NOT NULL,
	CONSTRAINT movie_fk 
		FOREIGN KEY(movie_id)
			REFERENCES movie(id),
	CONSTRAINT star_fk
		FOREIGN KEY(star_id)
			REFERENCES star(id)
);