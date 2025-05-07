--Show directors and film titles for films
--with a score of 8 or higher
select directors.name_director, films.title
from films
inner join directors 
on directors.id = films.director_fk
where films.score >= 8;