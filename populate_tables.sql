insert into genres(name) values ('Science Fiction'), ('Drama'), ('Romance'), ('Historical'), ('Thriller');
insert into people(name, dob, email) values
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
  ('Keir Dullea', '30/05/1936', null),
  ('Mark Hamill', '25/09/1951', null),
  ('Gregory Peck', '05/04/1916', null),
  ('Leonardo DiCaprio', '11/11/1974', null),
  ('Julie Christie', '14/04/1940', null),
  ('Charlton Heston', '04/10/1923', null),
  ('Manos Katrakis', '14/08/1908', null),
  ('Rutger Hauer', '23/01/1944', null),
  ('Juliette Binoche', '09/03/1964', null),
  ('Gerard Depardieu', '27/12/1948', null),
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

insert into films(title, release_year, score, directorId, starId, writerId, genreId) values
  ('2001: A Space Odyssey', 1968, 10, 1, 11, 21, 1),
  ('Star Wars: A New Hope', 1977, 7, 2, 12, 2, 1),
  ('To Kill A Mockingbird', 1962, 10, 3, 13, 22, 2),
  ('Titanic', 1997, 5, 4, 14, 4, 3),
  ('Dr Zhivago', 1965, 8, 5, 15, 23, 4),
  ('El Cid', 1961, 6, 6, 16, 24, 4),
  ('Voyage to Cythera', 1984, 8, 7, 17, 7, 2),
  ('Soldier of Orange', 1977, 8, 8, 18, 25, 5),
  ('Three Colours: Blue', 1993, 8, 9, 19, 26, 2),
  ('Cyrano de Bergerac', 1990, 9, 10, 20, 27, 3),

