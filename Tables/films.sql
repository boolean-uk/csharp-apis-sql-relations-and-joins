CREATE TABLE film (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  director_id INT,
  star_id INT,
  writer_id INT,
  year INT NOT NULL,
  genre VARCHAR(255) NOT NULL,
  score INT NOT NULL CHECK(score >= 1 AND score <=10),
  CONSTRAINT director_fk FOREIGN KEY (director_id) REFERENCES directors(id),
  CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES actors(id),
  CONSTRAINT writer_fk FOREIGN KEY (writer_id) REFERENCES writers(id)  
  )