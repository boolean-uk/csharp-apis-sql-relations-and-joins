-- Show title, director name and star name for all films

SELECT title, directorName, starName
FROM film
LEFT JOIN star ON film.starid = star.starid
LEFT JOIN director ON film.directorid = director.directorid;

-- Refactor for extension

SELECT film.title, director.peopleName AS directorName, star.peopleName AS starName
FROM film
LEFT JOIN people AS director ON film.directorid = director.personid
LEFT JOIN people AS star ON film.starid = star.personid;
