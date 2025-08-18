SELECT m.title AS american_movie
FROM movie m
JOIN people p ON m.director = p.id WHERE country = 'USA' 