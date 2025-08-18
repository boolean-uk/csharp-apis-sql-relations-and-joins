--Show the title, director and star name for all films
SELECT movies.name as title, p.name as director, p2.name as star FROM movies
LEFT join persons as p ON p.id = movies.director_fk 
LEFT join persons as p2 ON p2.id = movies.star_fk