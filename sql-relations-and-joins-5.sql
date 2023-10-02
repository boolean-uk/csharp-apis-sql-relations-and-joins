--Show directors and film titles for films with a score of 8 or higher

SELECT Film.Title, Director, Film.Score
FROM Film
LEFT JOIN Director ON Film.DirectorFK = Director.id
WHERE Film.Score >= 8
