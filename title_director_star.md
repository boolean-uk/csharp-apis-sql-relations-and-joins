SELECT m.title, d.name AS director_name, a.name AS star_name
FROM movies m
JOIN movies_directors md ON m.id = md.movie_id
JOIN directors d ON md.directors_id = d.id
JOIN movies_stars ms ON m.id = ms.movie_id
JOIN actors a ON ms.actors_id = a.id;
