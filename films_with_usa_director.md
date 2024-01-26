SELECT m.title
FROM movies m
JOIN movies_directors md ON m.id = md.movie_id
JOIN directors d ON md.directors_id = d.id
WHERE d.country = 'USA';