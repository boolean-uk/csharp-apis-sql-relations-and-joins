Show the title of films where the director is from the USA

SELECT f.Title
FROM Film f
JOIN Director d ON f.Director = d.Name
WHERE d.Country = 'USA';
