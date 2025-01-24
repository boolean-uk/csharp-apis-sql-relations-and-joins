select title, people.name 
from film
  inner join directors
  on film.directorId = directors.id
  inner join people
  on directors.personid = people.id;
