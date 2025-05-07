entities:

movie, attributes: title, year, genre, rating

director, attributes: name, country

star, attributes: name, dob

writer, attributes: name, email

In this data, every movie has only one director, star, and writer. But I will assume that a movie can have more than one of each. Making them many to many relations.

Relations: 
Movie(movieId (PK), title, year, genre, rating)
Person(personId (PK), name)
Worked_On(movie_fk, person_fk, role)
Director(person_fk (PK), country)
Star(person_fk (PK), dob)
Writer(person_fk (PK), email)
