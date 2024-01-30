--Show the title of films where the director is from the USA
SELECT f.title
FROM films f
JOIN directors d ON f.directorId = d.id
WHERE d.director_country = 'USA';