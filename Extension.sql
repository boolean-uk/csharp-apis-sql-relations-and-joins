
-- Extension 1
-- Refactor for Extension1 done in the Core-file and the Query1-6 files


-- Extension 2

CREATE TABLE cast (
    cast_id SERIAL PRIMARY KEY,
    film_id INT NOT NULL,
    actor_id INT NOT NULL,
    FOREIGN KEY (film_id) REFERENCES film(filmId),
    FOREIGN KEY (actor_id) REFERENCES people(personId)
);

INSERT INTO cast (film_id, actor_id) VALUES
(1,11),
(2,12),
(3,13),
(4,14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20);
