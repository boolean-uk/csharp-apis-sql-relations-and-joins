-- Insert directors
INSERT INTO directors (name, country) VALUES
  ('Stanley Kubrick', 'USA'),
  ('George Lucas', 'USA'),
  ('Robert Mulligan', 'USA'),
  ('James Cameron', 'Canada'),
  ('David Lean', 'UK'),
  ('Anthony Mann', 'USA'),
  ('Theodoros Angelopoulos', 'Greece'),
  ('Paul Verhoeven', 'Netherlands'),
  ('Krzysztof Kieslowski', 'Poland'),
  ('Jean-Paul Rappeneau', 'France');

-- Insert stars
INSERT INTO stars (name, dob) VALUES
  ('Keir Dullea', '1936-05-30'),
  ('Mark Hamill', '1951-09-25'),
  ('Gregory Peck', '1916-04-05'),
  ('Leonardo DiCaprio', '1974-11-11'),
  ('Julie Christie', '1940-04-14'),
  ('Charlton Heston', '1923-10-04'),
  ('Manos Katrakis', '1908-08-14'),
  ('Rutger Hauer', '1944-01-23'),
  ('Juliette Binoche', '1964-03-09'),
  ('Gerard Depardieu', '1948-12-27');

-- Insert writers
INSERT INTO writers (name, email) VALUES
  ('Arthur C Clarke', 'arthur@clarke.com'),
  ('George Lucas', 'george@email.com'),
  ('Harper Lee', 'harper@lee.com'),
  ('James Cameron', 'james@cameron.com'),
  ('Boris Pasternak', 'boris@boris.com'),
  ('Frederick Frank', 'fred@frank.com'),
  ('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
  ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
  ('Krzysztof Kieslowski', 'email@email.com'),
  ('Edmond Rostand', 'edmond@rostand.com');

-- Insert films
INSERT INTO films (title,director_id,writer_id, star_id, release_year, score, genre) VALUES
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