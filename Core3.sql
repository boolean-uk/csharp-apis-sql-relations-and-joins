Select film.title as Filmtitle, director.directorname as Directorname , director.directorcountry as Directorcountry
from film
INNER JOIN director ON film.director_id = director.id
WHERE director.directorcountry = 'USA';
