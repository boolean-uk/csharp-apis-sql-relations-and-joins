SELECT movies.title AS MovieTitle, people.name AS DirectorName
FROM movies
JOIN movies_directors ON movies.id = movies_directors.movie_id
JOIN people ON movies_directors.directors_id = people.id;
