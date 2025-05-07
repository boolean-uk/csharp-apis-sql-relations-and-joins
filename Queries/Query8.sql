
--third 
-- Show the title of each film where the star is born before 1920
select films.title
from films
inner join stars 
on stars.id = films.star_fk
where stars.dateOfBirth < date('01-01-1920');