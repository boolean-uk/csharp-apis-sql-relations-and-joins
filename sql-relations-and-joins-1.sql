--1. Show the title and director name for all films

SELECT Film.Title, Director.Director
FROM Film
LEFT JOIN Director ON Film.DirectorFK = Director.id
