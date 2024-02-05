
CREATE TABLE actors
(
  fk_person_id integer NOT NULL,
  PRIMARY KEY (fk_person_id)
);

CREATE TABLE casting
(
  fk_film_id   integer NOT NULL,
  fk_person_id integer NOT NULL,
  PRIMARY KEY (fk_film_id, fk_person_id)
);

CREATE TABLE directors
(
  fk_person_id integer NOT NULL,
  country      varchar,
  PRIMARY KEY (fk_person_id)
);

CREATE TABLE films
(
  film_id serial  NOT NULL,
  title   varchar,
  year    integer,
  genre   varchar,
  score   int    ,
  PRIMARY KEY (film_id)
);

CREATE TABLE films_directors
(
  fk_film_id   integer NOT NULL,
  fk_person_id integer NOT NULL,
  PRIMARY KEY (fk_film_id, fk_person_id)
);

CREATE TABLE films_stars
(
  fk_film_id   integer NOT NULL,
  fk_person_id integer NOT NULL,
  PRIMARY KEY (fk_film_id, fk_person_id)
);

CREATE TABLE films_writers
(
  fk_film_id   integer NOT NULL,
  fk_person_id integer NOT NULL,
  PRIMARY KEY (fk_film_id, fk_person_id)
);

CREATE TABLE person
(
  person_id serial  NOT NULL,
  name      varchar,
  PRIMARY KEY (person_id)
);

CREATE TABLE stars
(
  fk_person_id integer NOT NULL,
  born         date   ,
  PRIMARY KEY (fk_person_id)
);

CREATE TABLE writers
(
  fk_person_id integer NOT NULL,
  email        varchar,
  PRIMARY KEY (fk_person_id)
);

ALTER TABLE films_writers
  ADD CONSTRAINT FK_films_TO_films_writers
    FOREIGN KEY (fk_film_id)
    REFERENCES films (film_id);

ALTER TABLE films_stars
  ADD CONSTRAINT FK_films_TO_films_stars
    FOREIGN KEY (fk_film_id)
    REFERENCES films (film_id);

ALTER TABLE films_directors
  ADD CONSTRAINT FK_films_TO_films_directors
    FOREIGN KEY (fk_film_id)
    REFERENCES films (film_id);

ALTER TABLE writers
  ADD CONSTRAINT FK_person_TO_writers
    FOREIGN KEY (fk_person_id)
    REFERENCES person (person_id);

ALTER TABLE films_writers
  ADD CONSTRAINT FK_writers_TO_films_writers
    FOREIGN KEY (fk_person_id)
    REFERENCES writers (fk_person_id);

ALTER TABLE directors
  ADD CONSTRAINT FK_person_TO_directors
    FOREIGN KEY (fk_person_id)
    REFERENCES person (person_id);

ALTER TABLE stars
  ADD CONSTRAINT FK_person_TO_stars
    FOREIGN KEY (fk_person_id)
    REFERENCES person (person_id);

ALTER TABLE films_stars
  ADD CONSTRAINT FK_stars_TO_films_stars
    FOREIGN KEY (fk_person_id)
    REFERENCES stars (fk_person_id);

ALTER TABLE films_directors
  ADD CONSTRAINT FK_directors_TO_films_directors
    FOREIGN KEY (fk_person_id)
    REFERENCES directors (fk_person_id);

ALTER TABLE casting
  ADD CONSTRAINT FK_films_TO_casting
    FOREIGN KEY (fk_film_id)
    REFERENCES films (film_id);

ALTER TABLE actors
  ADD CONSTRAINT FK_person_TO_actors
    FOREIGN KEY (fk_person_id)
    REFERENCES person (person_id);

ALTER TABLE casting
  ADD CONSTRAINT FK_actors_TO_casting
    FOREIGN KEY (fk_person_id)
    REFERENCES actors (fk_person_id);
