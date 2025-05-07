-- Creating a People table
CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL,
    type VARCHAR(15) NOT NULL -- This field will indicate the type of person (actor, director, writer)
);


