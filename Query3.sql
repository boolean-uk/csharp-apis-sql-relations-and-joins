-- Show title of films where the director is from the USA

SELECT title
FROM film
LEFT JOIN director ON film.directorid = director.directorid
WHERE DirectorCountry = 'USA'

