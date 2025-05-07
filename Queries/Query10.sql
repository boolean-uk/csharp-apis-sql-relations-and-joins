

--fifth 
-- Show the title of each film where the star is born after 1920
-- and the film was released afer 1970
select films.title
from films
inner join stars 
on stars.id = films.star_fk
where stars.dateOfBirth > date('01-01-1920')
and films.release_year > 1970;



