--Show the title and director name for all films
select films.title, directors.name_director
from films
inner join directors
on directors.id = films.director_fk;










