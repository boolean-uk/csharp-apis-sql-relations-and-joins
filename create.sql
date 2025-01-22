DROP TABLE IF EXISTS film, roles, person, person_has_role, film_directed_by, film_written_by, cast_members CASCADE;


CREATE TABLE film
(
	id serial PRIMARY KEY,
  title VARCHAR(255),
  year INT,
  genre VARCHAR(255),
  score INT
);

CREATE TABLE roles
(
	id serial PRIMARY KEY,
  role_name VARCHAR(255)
);

CREATE TABLE person
(
	id serial PRIMARY KEY,
  name VARCHAR(255),
  dob DATE,
  country VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE person_has_role
(
	person_id INT,
  roles_id INT,
  PRIMARY KEY (person_id, roles_id),
  FOREIGN KEY (person_id) REFERENCES person(id) ON UPDATE CASCADE,
  FOREIGN KEY (roles_id) REFERENCES roles(id) ON UPDATE CASCADE
);

CREATE TABLE film_directed_by
(
	film_id INT,
  person_id INT,
  PRIMARY KEY (film_id, person_id),
  FOREIGN KEY (film_id) REFERENCES film(id) ON UPDATE CASCADE,
  FOREIGN KEY (person_id) REFERENCES person(id) ON UPDATE CASCADE
);

CREATE TABLE film_written_by
(
	film_id INT,
  person_id INT,
  PRIMARY KEY (film_id, person_id),
  FOREIGN KEY (film_id) REFERENCES film(id) ON UPDATE CASCADE,
  FOREIGN KEY (person_id) REFERENCES person(id) ON UPDATE CASCADE
);

CREATE TABLE cast_members
(
	film_id INT,
  person_id INT,
  isStar BOOLEAN,
  PRIMARY KEY (film_id, person_id),
  FOREIGN KEY (film_id) REFERENCES film(id) ON UPDATE CASCADE,
  FOREIGN KEY (person_id) REFERENCES person(id) ON UPDATE CASCADE
);






