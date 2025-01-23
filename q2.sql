-- Show the title, director and star name for all films
select title, director_name, people.name star_name 
from directorFilms 
  inner join people 
  on directorFilms.starId = people.id; 

