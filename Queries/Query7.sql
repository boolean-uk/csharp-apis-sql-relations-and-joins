--second
-- Show the email for the writer of each film and the film title 
-- where the director is not from USA
select writers.email, films.title
from films
inner join writers 
on writers.id = films.writer_fk
inner join directors
on directors.id = films.director_fk
where directors.country != 'USA';
