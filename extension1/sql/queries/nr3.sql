--Show the title of films where the director is from the USA
SELECT f.title
FROM films f
JOIN people d ON f.directorId = d.id
WHERE d.country = 'USA';