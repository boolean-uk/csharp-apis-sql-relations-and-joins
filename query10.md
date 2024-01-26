SELECT director.name, film.title
FROM director
INNER JOIN film ON director.id=film.director_id WHERE country = 'Canada';