-- this selects all titles that have a cast and shows a list of all actors and who is the star

select films.title,  people.thename, casts.isStar
from films 
inner join casts on films.id = casts.film_fk
inner join people on people.id = casts.actor_fk