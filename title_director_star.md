SELECT m.title, pa.name AS actor_name, pd.name AS director_name
FROM movies m
JOIN movies_directors md ON m.id = md.movie_id
JOIN directors d ON md.directors_id = d.id
JOIN movies_stars ms ON m.id = ms.movie_id
JOIN actors a ON ms.actors_id = a.id
JOIN people pa ON a.people_id = pa.id
JOIN people pd ON d.people_id = pd.id;