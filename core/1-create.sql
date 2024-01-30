DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS director;
DROP TABLE IF EXISTS star;
DROP TABLE IF EXISTS writer;

CREATE TABLE director (
  director_id SERIAL PRIMARY KEY,
  director_first_name TEXT NOT NULL,
  director_last_name TEXT NOT NULL,
  director_country TEXT NOT NULL
);

CREATE TABLE star (
  star_id SERIAL PRIMARY KEY,
  star_first_name TEXT NOT NULL,
  star_last_name TEXT NOT NULL,
  star_dob DATE NOT NULL
);

CREATE TABLE writer (
  writer_id SERIAL PRIMARY KEY,
  writer_first_name TEXT NOT NULL,
  writer_last_name TEXT NOT NULL,
  writer_email TEXT NOT NULL
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
  CONSTRAINT fk_star FOREIGN KEY (film_fk_star) REFERENCES star(star_id)
  CONSTRAINT fk_writer FOREIGN KEY (film_fk_writer) REFERENCES writer(writer_id)
);