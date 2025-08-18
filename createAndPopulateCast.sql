CREATE TABLE db_cast (
  id serial PRIMARY KEY,
  actor_fk INTEGER NOT NULL,
  is_star BOOLEAN NOT NULL,
  film_fk INTEGER NOT NULL
);


INSERT INTO People (name, dob)
  VALUES('Kate Winslet', '1975-10-5'),
  ('Kathy Bates', '1948-06-28'),
  ('Billy Zane', '1966-02-24'),

  ('Gary Lockwood', '1937-02-21'),
  ('William Sylvester', '1922-01-31');



INSERT INTO db_cast (actor_fk, is_star, film_fk)
VALUES (28, false, 4),
(29, false, 4),
(30, false, 4),
(31, false, 1),
(32, false, 1);



INSERT INTO db_cast (actor_fk, is_star, film_fk)
SELECT star_fk, true, id
FROM film;


SELECT * FROM db_cast;









