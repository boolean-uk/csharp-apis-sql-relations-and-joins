SELECT title
FROM film
         JOIN director d on film.director_id = d.id
         JOIN countries c on d.country_id = c.id
WHERE c.name = 'USA';