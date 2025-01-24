with directorfilm AS(
	select directors.country AS country, title
  	from film inner join directors 
    on film.directorid = directors.id
)
select title 
from directorfilm
where country = 'USA';