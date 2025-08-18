--movies where the genre is Drama
SELECT m.title, g.genre FROM movies m
LEFT JOIN genres g ON g.id = m.genre
WHERE g.genre = 'Drama'