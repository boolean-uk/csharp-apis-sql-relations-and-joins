--Show the title of films where the director is from the USA

SELECT Film.Title, Director_Country 
FROM Film
LEFT JOIN Director ON Film.DirectorFK = Director.id
WHERE TRIM (Director.Director_Country) = 'USA'
