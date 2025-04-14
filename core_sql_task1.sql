--Show the title and director name for all films
SELECT films.title, directors.director_name
from films
join directors on films.director_id = directors.director_id