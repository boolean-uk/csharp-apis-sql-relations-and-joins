--Show the title of films where the director is from the USA
SELECT films.title, directors.director_country
FROM films
JOIN directors ON films.director_id = directors.director_id
WHERE directors.director_country LIKE 'USA'
