--2. Show the title, director and star name for all films

SELECT Film.Title, Director.Director, Star.Star
FROM Film
LEFT JOIN Director ON Film.DirectorFK = Director.id
LEFT JOIN Star ON Film.StarFK = Star.id
