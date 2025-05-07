ALTER TABLE Writer 
ADD person_id INTEGER REFERENCES People(person_id);