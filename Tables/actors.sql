CREATE TABLE actors (
  id SERIAL PRIMARY KEY,
  person_id INT,
  CONSTRAINT person_fk FOREIGN KEY (person_id) REFERENCES people(id)
  )
