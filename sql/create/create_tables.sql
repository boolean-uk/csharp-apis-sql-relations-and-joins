
CREATE TABLE directors
(
  director_id serial  NOT NULL,
  name        varchar,
  country     varchar,
  PRIMARY KEY (director_id)
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
  fk_film_id     integer NOT NULL,
  fk_director_id integer NOT NULL
);

CREATE TABLE films_stars
(
  fk_film_id integer NOT NULL,
  fk_star_id integer NOT NULL
);

CREATE TABLE films_writers
(
  fk_film_id   integer NOT NULL,
  fk_writer_id integer NOT NULL
);

CREATE TABLE stars
(
  star_id serial  NOT NULL,
  name    varchar,
  born    date   ,
  PRIMARY KEY (star_id)
);

CREATE TABLE writers
(
  writer_id serial  NOT NULL,
  name      varchar,
  email     varchar,
  PRIMARY KEY (writer_id)
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

ALTER TABLE films_writers
  ADD CONSTRAINT FK_writers_TO_films_writers
    FOREIGN KEY (fk_writer_id)
    REFERENCES writers (writer_id);

ALTER TABLE films_stars
  ADD CONSTRAINT FK_stars_TO_films_stars
    FOREIGN KEY (fk_star_id)
    REFERENCES stars (star_id);

ALTER TABLE films_directors
  ADD CONSTRAINT FK_directors_TO_films_directors
    FOREIGN KEY (fk_director_id)
    REFERENCES directors (director_id);
