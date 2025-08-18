-- Bonus query 3: List all movies along with their genre name
SELECT m.title, g.name 
FROM Movies m
LEFT JOIN Genres g ON g.id = m.genre_fk;
