Select film.title as Filmtitle, person.name as Directorname
from film
INNER JOIN director ON film.director_id = director.id
INNER JOIN person ON director.person_id = person.id;

-- this is the first query modified. this will work with the other queries too.
