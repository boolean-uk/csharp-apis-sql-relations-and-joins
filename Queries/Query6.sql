
--Make at least 5 more queries to demonstrate your
--understanding of joins, and other relationships between tables.

-- first
-- Show the writers and film titles for films released 1970 and after
select writers.name_writer, films.title, films.release_year
from films
inner join writers 
on writers.id = films.writer_fk
where films.release_year >= 1970;