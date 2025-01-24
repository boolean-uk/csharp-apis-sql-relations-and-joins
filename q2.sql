with directorfilm AS(
	select people.name AS director_name, title, starid
  	from film inner join directors 
    on film.directorid = directors.id
    inner join people
    on directors.personid = people.id
)

select title, director_name, people.name star_name 
from directorfilm
  inner join people 
  on directorfilm.starid = people.id; 