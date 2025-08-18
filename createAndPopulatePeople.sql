CREATE TABLE Film(
  id serial PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  director_fk INTEGER NOT NULL,
  star_fk INTEGER NOT NULL,
  writer_fk INTEGER NOT NULL,
  year integer NOT NULL,
  genre VARCHAR(100) NOT NULL,
  score integer NOT NULL
);


INSERT INTO Film (title, director_fk, star_fk, writer_fk, year, genre, score)
VALUES ('2001: A Space Oddyssey', 1, 11, 21, 1968, 'Science Fiction', 10),
('Star Wars: A New Hope', 2, 12, 2, 1977, 'Science Fiction', 7),
('To Kill A Mockingbird', 3, 13, 22, 1962, 'Drama', 10),
('Titanic', 4, 14, 4, 1997, 'Romance', 5),
('Dr Zhivago', 5, 15, 23, 1965, 'Historical', 8),
('El Cid', 6, 16, 24, 1961, 'Historical', 6),
('Voyage to Cythera', 7, 17, 7, 1984, 'Drama', 8),
('Soldier of Orange', 8, 18, 25, 1977, 'Thriller', 8),
('Three Colours: Blue', 9, 19, 26, 1993, 'Drama', 8),
('Cyrano de Bergerac', 10, 20, 27, 1990, 'Historical', 9);






