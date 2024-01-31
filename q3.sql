--Show the title of films where the director is from the USA

SELECT film.title,  director.country
FROM film 
JOIN director on film.director_id = director.id
WHERE director.country LIKE '%USA%';
