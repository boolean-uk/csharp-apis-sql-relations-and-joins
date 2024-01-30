CREATE TABLE
    casts (
        film_id INT REFERENCES films (id),
        actor_id INT REFERENCES actors (id),
        PRIMARY KEY (film_id, actor_id)
    );