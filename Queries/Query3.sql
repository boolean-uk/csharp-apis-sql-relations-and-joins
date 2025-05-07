--Show the title of films where the director is from the USA
select films.title
from films
inner join directors 
on directors.id = films.director_fk
where directors.country = 'USA';
