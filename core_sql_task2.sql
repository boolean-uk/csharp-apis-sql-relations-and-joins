--Show the title, director and star name for all films
SELECT films.title, directors.director_name, stars.star_name
from films
join directors on films.director_id = directors.director_id
join stars on films.star_id = stars.star_id