SELECT DISTINCT Director.Name AS Director_Name
FROM Film
JOIN Director ON Film.Director_ID = Director.Director_ID
WHERE Film.Genre = 'Drama';

SELECT Film.Genre, COUNT(Film.Film_ID) AS Number_of_Films
FROM Film
GROUP BY Film.Genre;

SELECT DISTINCT Writer.Name AS Writer_Name, Writer.Email
FROM Film
JOIN Writer ON Film.Writer_ID = Writer.Writer_ID
WHERE Film.Score > 8;

SELECT Film.Title, Director.Name AS Director_Name
FROM Film
JOIN Director ON Film.Director_ID = Director.Director_ID
WHERE Film.Year > 1980;

SELECT Film.Title, Film.Genre, Star.Name AS Star_Name
FROM Film
JOIN Star ON Film.Star_ID = Star.Star_ID;