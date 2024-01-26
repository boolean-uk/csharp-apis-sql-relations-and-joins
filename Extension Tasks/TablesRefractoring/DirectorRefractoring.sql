ALTER TABLE Director
ADD person_id INTEGER REFERENCES People(person_id);