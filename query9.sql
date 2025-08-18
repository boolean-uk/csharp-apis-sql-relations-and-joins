--movies where the score is lower than 9 and the genre is either Drama or Romance
SELECT m.title, g.genre, m.score FROM movies m
LEFT JOIN genres g ON g.id = m.genre
WHERE m.score < 9
And g.genre = 'Drama'
OR g.genre = 'Romance'