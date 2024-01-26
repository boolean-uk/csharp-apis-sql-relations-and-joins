CREATE TABLE film (
	film_id SERIAL PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  year INT NOT NULL,
  genre VARCHAR(15) NOT NULL,
  score INT NOT NULL,
  director_id INT,
  star_id INT,
  writer_id INT,
  FOREIGN KEY (director_id) REFERENCES Director(director_id),
  FOREIGN KEY (star_id) REFERENCES Star(star_id),
  FOREIGN KEY (writer_id) REFERENCES Writer(writer_id)
);


INSERT INTO film (title, year, genre, score, director_id, star_id, writer_id) VALUES
('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
('Titanic', 1997, 'Romance', 5, 4, 4, 4),
('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
('El Cid', 1961, 'Historical', 6, 6, 6, 6),
('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);  