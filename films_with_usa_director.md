SELECT m.title AS movietitle, pd.country AS directorcountry
FROM movies m
JOIN movies_directors md ON m.id = md.movie_id
JOIN directors d ON md.directors_id = d.id
JOIN people pd ON d.people_id = pd.id
WHERE pd.country = 'USA';