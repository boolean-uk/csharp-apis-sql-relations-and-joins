insert into people(name, birth, email) values
  ('Stanley Kubrick', null, null),
  ('George Lucas', null, 'george@email.com'),
  ('Robert Mulligan', null, null),
  ('James Cameron', null, 'james@cameron.com'),
  ('David Lean', null, null),
  ('Anthony Mann', null, null),
  ('Theodoros Angelopoulos', null, 'theo@angelopoulos.com'),
  ('Paul Verhoeven', null, null),
  ('Krzysztof Kieslowski', null, null),
  ('Jean-Paul Rappeneau', null, null),
-- 11
  ('Keir Dullea', '1936-05-30', null),
  ('Mark Hamill', '1951-09-25',null),
  ('Gregory Peck', '1916-04-05', null),
  ('Leonardo DiCaprio', '1974-11-11', null),
  ('Julie Christie', '1940-04-14', null),
  ('Charlton Heston', '1923-10-04', null),
  ('Manos Katrakis', '1908-08-14', null),
  ('Rutger Hauer', '1944-01-23', null),
  ('Juliette Binoche', '1964-03-09', null),
  ('Gerard Depardieu', '1948-12-27', null),
-- 21
  ('Arthur C Clarke', null, 'arthur@clarke.com'),
  ('Harper Lee', null, 'harper@lee.com'),
  ('Boris Pasternak', null, 'boris@boris.com'),
  ('Frederick Frank', null, 'fred@frank.com'),
  ('Erik Hazelhoff Roelfzema', null, 'erik@roelfzema.com'),
  ('Krzysztof Kieslowski', null, 'email@email.com'),
  ('Edmond Rostand', null, 'edmond@rostand.com');

insert into directors(country, personId) values 
  ('USA', 1),
  ('USA', 2),
  ('USA', 3),
  ('Canada', 4),
  ('UK', 5),
  ('USA', 6),
  ('Greece', 7),
  ('Netherlands', 8),
  ('Poland', 9),
  ('France', 10);

insert into film(title, genre, released, score, directorId, starId, writerId) values
  ('2001: A Space Odyssey', 'Science Fiction', 1968, 10, 1, 11, 21),
  ('Star Wars: A New Hope', 'Science Fiction', 1977, 7, 2, 12, 2),
  ('To Kill A Mockingbird', 'Drama', 1962, 10, 3, 13, 22),
  ('Titanic', 'Romance', 1997, 5, 4, 14, 4),
  ('Dr Zhivago', 'Historical', 1965, 8, 5, 15, 23),
  ('El Cid', 'Historical', 1961, 6, 6, 16, 24),
  ('Voyage to Cythera', 'Drama', 1984, 8, 7, 17, 7),
  ('Soldier of Orange', 'Thriller', 1977, 8, 8, 18, 25),
  ('Three Colours: Blue', 'Drama', 1993, 8, 9, 19, 26),
  ('Cyrano de Bergerac', 'Historical', 1990, 9, 10, 20, 27);

