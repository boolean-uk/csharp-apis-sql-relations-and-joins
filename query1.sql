--Show the title and director name for all films
SELECT movies.name, persons.name FROM movies
LEFT JOIN persons ON persons.id = movies.director_fk