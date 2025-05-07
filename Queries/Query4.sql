--Show only those films where the writer 
--and the director are the same person
select films.title
from films
inner join directors 
on directors.id = films.director_fk
inner join writers
on writers.id = films.writer_fk
where directors.name_director = writers.name_writer;