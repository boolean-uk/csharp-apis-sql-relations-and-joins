CREATE TABLE film_cast (
  id SERIAL PRIMARY KEY,
  film_id INT,
  actor_id INT,
  movie_role VARCHAR(255),
  CONSTRAINT film_fk FOREIGN KEY (film_id) REFERENCES film(id),
  CONSTRAINT actor_fk FOREIGN KEY (actor_id) REFERENCES actors(id)
)