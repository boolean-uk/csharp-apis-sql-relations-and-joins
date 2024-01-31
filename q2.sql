--Show the title, director and star name for all films

SELECT film.title, director.name, star.name 
FROM film
JOIN director on film.director_id = director.id
JOIN star on film.star_id = star.id;
