-- Show the title and director name for all films
select title, director_name 
from films 
  inner join directorPerson 
  on films.directorId = directorPerson.id;

