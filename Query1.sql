-- Show title and director name for all films

SELECT title, directorName
FROM film
LEFT JOIN director ON film.directorid = director.directorid;
