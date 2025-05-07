-- Insert people
INSERT INTO people (name) VALUES
  ('Stanley Kubrick'),
  ('George Lucas'),
  ('Robert Mulligan'),
  ('James Cameron'),
  ('David Lean'),
  ('Anthony Mann'),
  ('Theodoros Angelopoulos'),
  ('Paul Verhoeven'),
  ('Krzysztof Kieslowski'),
  ('Jean-Paul Rappeneau'),
  ('Keir Dullea'),
  ('Mark Hamill'),
  ('Gregory Peck'),
  ('Leonardo DiCaprio'),
  ('Julie Christie'),
  ('Charlton Heston'),
  ('Manos Katrakis'),
  ('Rutger Hauer'),
  ('Juliette Binoche'),
  ('Gerard Depardieu'),
  ('Arthur C Clarke'),
  ('Harper Lee'),
  ('Boris Pasternak'),
  ('Frederick Frank'),
  ('Erik Hazelhoff Roelfzema'),
  ('Edmond Rostand');

-- Insert directors
INSERT INTO directors (personId, country) VALUES
  (1, 'USA'),
  (2, 'USA'),
  (3, 'USA'),
  (4, 'Canada'),
  (5, 'UK'),
  (6, 'USA'),
  (7, 'Greece'),
  (8, 'Netherlands'),
  (9, 'Poland'),
  (10, 'France');

-- Insert stars
INSERT INTO stars (personId, dob) VALUES
  (11, '1936-05-30'),
  (12, '1951-09-25'),
  (13, '1916-04-05'),
  (14, '1974-11-11'),
  (15, '1940-04-14'),
  (16, '1923-10-04'),
  (17, '1908-08-14'),
  (18, '1944-01-23'),
  (19, '1964-03-09'),
  (20, '1948-12-27');

  -- Insert writers
INSERT INTO writers (personId, email) VALUES
  (21, 'arthur@clarke.com'),
  (2, 'george@email.com'),
  (22, 'harper@lee.com'),
  (4, 'james@cameron.com'),
  (23, 'boris@boris.com'),
  (24, 'fred@frank.com'),
  (7, 'theo@angelopoulos.com'),
  (25, 'erik@roelfzema.com'),
  (9, 'email@email.com'),
  (26, 'edmond@rostand.com');


-- Insert films
INSERT INTO films (title, directorId, writerId, starId, release_year, score, genre) VALUES
  ('2001: A Space Odyssey', 1, 1, 1, 1968, 10, 'Science Fiction'),
  ('Star Wars: A New Hope', 2, 2, 2, 1977, 7, 'Science Fiction'),
  ('To Kill A Mockingbird', 3, 3, 3, 1962, 10, 'Drama'),
  ('Titanic', 4, 4, 4, 1997, 5, 'Romance'),
  ('Dr Zhivago', 5, 5, 5, 1965, 8, 'Historical'),
  ('El Cid', 6, 6, 6, 1961, 6, 'Historical'),
  ('Voyage to Cythera', 7, 7, 7, 1984, 8, 'Drama'),
  ('Soldier of Orange', 8, 8, 8, 1977, 8, 'Thriller'),
  ('Three Colours: Blue', 9, 9, 9, 1993, 8, 'Drama'),
  ('Cyrano de Bergerac', 10, 10, 10, 1990, 9, 'Historical');
