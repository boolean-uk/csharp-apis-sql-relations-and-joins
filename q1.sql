--Show the title and director name for all films

SELECT film.title, director.name
FROM film 
JOIN director On film.director_id = director.id;
