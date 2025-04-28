
SELECT DISTINCT People.Name AS Director_Name
FROM Film
INNER JOIN People ON Film.Director_ID = people.person_id
WHERE Film.Genre = 'Drama';

SELECT Film.Genre, COUNT(Film.Film_ID) AS Number_of_Films
FROM Film
GROUP BY Film.Genre;

SELECT DISTINCT People.Name AS Writer_Name, People.Email AS Writer_Email
FROM Film
JOIN People ON Film.Writer_ID = people.person_id
WHERE Film.Score > 8;

SELECT Film.Title, People.Name AS Director_Name
FROM Film
JOIN People ON Film.Director_ID = people.person_id
WHERE Film.Year > 1980;


SELECT Film.Title, Film.Genre, People.Name AS Star_Name
FROM Film
JOIN People ON Film.Star_ID = people.person_id;