Select film.title as Filmtitle, director.directorname as Directorname, star.starname as StarName
from film
INNER JOIN director on film.director_id = director.id
INNER JOIN star on film.star_id = star.id;
