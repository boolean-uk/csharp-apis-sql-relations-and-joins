


--fourth
-- Show the director of each film where the first letter in writer's name
-- is the same as the first letter in the writer's email 
select directors.name_director, films.title
from films
inner join writers 
on writers.id = films.writer_fk
inner join directors
on directors.id = films.director_fk
where lower(substring(writers.email, 1, 1)) = lower(substring(writers.name_writer, 1, 1));
