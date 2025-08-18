-- Extension Task 1 
--  the database tables so that the Actors, Directors and Writers all identify people (using a Foreign Key) that are present in a single People table
CREATE TABLE FilmRole(
  id serial PRIMARY KEY,
  filmrole VARCHAR(100) NOT NULL
);

CREATE TABLE People(
  id serial PRIMARY KEY,
  name VARCHAR (100),
  role_fk INTEGER,
  FOREIGN KEY (role_fk) REFERENCES FilmRole(id)
);

INSERT INTO FilmRole (filmrole) VALUES ('Director');
INSERT INTO FilmRole (filmrole) VALUES ('Star');
INSERT INTO FilmRole (filmrole) VALUES ('Writer');

INSERT INTO People (name, role_fk) VALUES 
  ('Stanley Kubrick', 1),
  ('George Lucas', 1),
  ('Robert Mulligan', 1),
  ('James Cameron', 1),
  ('David Lean', 1),
  ('Anthony Mann', 1),
  ('Theodoros Angelopoulos', 1),
  ('Paul Verhoeven', 1),
  ('Krzysztof Kieslowski', 1),
  ('Jean-Paul Rappeneau', 1);

INSERT INTO People (name, role_fk) VALUES ('Keir Dullea', 2);
INSERT INTO People (name, role_fk) VALUES ('Gregory Peck', 2);
INSERT INTO People (name, role_fk) VALUES ('Leonardo DiCaprio', 2);
INSERT INTO People (name, role_fk) VALUES ('Julie Christie', 2);
INSERT INTO People (name, role_fk) VALUES ('Charlton Heston', 2);
INSERT INTO People (name, role_fk) VALUES ('Manos Katrakis', 2);
INSERT INTO People (name, role_fk) VALUES ('Rutger Hauer', 2);
INSERT INTO People (name, role_fk) VALUES ('Juliette Binoche', 2);
INSERT INTO People (name, role_fk) VALUES ('Gerard Depardieu', 2);

INSERT INTO People (name, role_fk) VALUES 
('Arthur C Clarke', 3),
('George Lucas', 3),
('Harper Lee', 3),
('James Cameron', 3),
('Boris Pasternak', 3),
('Frederick Frank', 3),
('Theodoros Angelopoulos', 3),
('Erik Hazelhoff Roelfzema', 3),
('Krzysztof Kieslowski', 3),
('Edmond Rostand', 3);

-- Extension Task 2 
--  Add a Cast table that links Films to Actors (ie the Cast table contains details of all of the Actors in addition to the Star who appear in the Film).


