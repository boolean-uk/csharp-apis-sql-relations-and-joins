Select film.title as Filmtitle, director.directorname as Directorname from film
INNER JOIN director ON film.director_id = director.id
