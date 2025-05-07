DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS director;
DROP TABLE IF EXISTS star;
DROP TABLE IF EXISTS writer;
DROP TABLE IF EXISTS person; 

CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  person_first_name TEXT NOT NULL,
  person_last_name TEXT NOT NULL
);

CREATE TABLE director (
  director_id SERIAL PRIMARY KEY,
  director_fk_person INTEGER NOT NULL,
  director_country TEXT NOT NULL,
  CONSTRAINT fk_person FOREIGN KEY (director_fk_person) REFERENCES person(person_id)
);

CREATE TABLE star (
  star_id SERIAL PRIMARY KEY,
  star_fk_person INTEGER NOT NULL,
  star_dob DATE NOT NULL,
  CONSTRAINT fk_person FOREIGN KEY (star_fk_person) REFERENCES person(person_id)
);

CREATE TABLE writer (
  writer_id SERIAL PRIMARY KEY,
  writer_fk_person INTEGER NOT NULL,
  writer_email TEXT NOT NULL,
  CONSTRAINT fk_person FOREIGN KEY (writer_fk_person) REFERENCES person(person_id)
);

CREATE TABLE film (
  film_id SERIAL PRIMARY KEY,
  film_title TEXT NOT NULL,
  film_release_year INTEGER NOT NULL,
  film_genre TEXT NOT NULL,
  film_score INTEGER NOT NULL,
  film_fk_director INTEGER NOT NULL,
  film_fk_star INTEGER NOT NULL,
  film_fk_writer INTEGER NOT NULL,
  CONSTRAINT fk_director FOREIGN KEY (film_fk_director) REFERENCES director(director_id),
  CONSTRAINT fk_star FOREIGN KEY (film_fk_star) REFERENCES star(star_id),
  CONSTRAINT fk_writer FOREIGN KEY (film_fk_writer) REFERENCES writer(writer_id)
);