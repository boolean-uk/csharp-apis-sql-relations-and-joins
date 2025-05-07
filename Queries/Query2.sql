
--Show the title, director and star name for all films
select films.title, directors.name_director, stars.name_star
from films
inner join directors 
on directors.id = films.director_fk
inner join stars
on stars.id = films.star_fk;