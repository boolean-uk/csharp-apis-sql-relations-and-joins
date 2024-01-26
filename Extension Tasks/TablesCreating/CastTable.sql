CREATE TABLE Cast (
    film_id INTEGER REFERENCES Film(film_id),
    person_id INTEGER REFERENCES People(person_id)
);
