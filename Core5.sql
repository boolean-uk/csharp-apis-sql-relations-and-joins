Select film.title as Filmtitle, director.directorname as DirectorName, film.score as Score
from film
INNER JOIN director ON film.director_id = director.id
WHERE film.score >= 8;
