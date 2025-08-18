SELECT movie.title, people.name AS director_name
FROM movie
LEFT JOIN people ON movie.director = people.id;