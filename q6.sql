--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

create view directorPerson as
  select name director_name, country director_country
  from directors inner join people 
    on people.id = directors.personId;

create view directorFilms as
  select *,  
  from films 
  inner join directorPerson on films.directorId = directorPerson.id;

create view directorStarFilms as
  select directorFilms.*, dob star_dob, name star_name from
  from directorFilms
  inner join people on directorFilms.starId = people.id;

-- Show all films Leonardo DiCaprio has starred in
select title 
from films 
inner join people 
  on films.starId = people.id 
where people.name = "Leonardo DiCaprio";

-- Show drama films
select title 
from films 
inner join genres 
  on films.genreId = genres.id 
where genres.name = "Drama";
