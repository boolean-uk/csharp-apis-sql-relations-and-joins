CREATE TABLE people (
	person_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL,
  dob DATE
);
