--Show the title and director name for all films

SELECT Film.Title, Star.Name, Director.Name AS DirectorName
FROM Film
JOIN FilmDetails ON Film.FilmID = FilmDetails.FilmID
JOIN Director ON FilmDetails.DirectorID = Director.DirectorID;


--Show the title, star and director name for all films

SELECT Film.Title, Director.Name AS DirectorName, Star.Name AS StarName
FROM Film
JOIN FilmDetails ON Film.FilmID = FilmDetails.FilmID
JOIN Director ON FilmDetails.DirectorID = Director.DirectorID
JOIN STAR ON FilmDetails.starid = star.starid;

--Show the title of films where the director is from the USA

SELECT Film.Title
FROM Film
JOIN FilmDetails ON Film.FilmID = FilmDetails.FilmID
JOIN Director ON FilmDetails.DirectorID = Director.DirectorID
WHERE Director.Country = 'USA';


--Show only those films where the writer and the director are the same person
SELECT Film.Title
FROM Film
JOIN FilmDetails ON Film.FilmID = FilmDetails.FilmID
JOIN Director ON FilmDetails.DirectorID = Director.DirectorID
JOIN Writer ON filmdetails.writerID = writer.writerID
WHERE Director.name = writer.name;


--Show directors and film titles for films with a score of 8 or higher


SELECT Director.Name AS DirectorName, Film.Title AS FilmName
FROM Film
JOIN FilmDetails ON Film.FilmID = FilmDetails.FilmID
JOIN Director ON FilmDetails.DirectorID = Director.DirectorID
WHERE Film.Score > 8;

-- Using left join to achive same effect as previous (1)

SELECT Director.Name AS DirectorName, Film.Title AS FilmName
FROM Film
LEFT JOIN FilmDetails ON Film.FilmID = FilmDetails.FilmID
LEFT JOIN Director ON FilmDetails.DirectorID = Director.DirectorID
WHERE Film.Score > 8;

-- Select directors for films starting with letter C   (2)

SELECT Director.Name AS DirectorName, Film.Title AS FilmName
FROM Film
JOIN FilmDetails ON Film.FilmID = FilmDetails.FilmID
JOIN Director ON FilmDetails.DirectorID = Director.DirectorID
WHERE Film.Title LIKE 'C%';

-- Select directors for films with top scores that ar higher than 9 and less than 6  (3)
SELECT Director.Name AS DirectorName, Film.Title AS FilmName
FROM Film
JOIN FilmDetails ON Film.FilmID = FilmDetails.FilmID
JOIN Director ON FilmDetails.DirectorID = Director.DirectorID
WHERE Film.Score > 9 OR Film.Score < 6;

--Count of Films by Genre (4)
SELECT Film.Genre, COUNT(*) AS FilmCount
FROM Film
GROUP BY Film.Genre
ORDER BY FilmCount DESC;

--Directors with Multiple Films (5)
SELECT Director.Name AS DirectorName, COUNT(*) AS FilmCount
FROM Director
JOIN FilmDetails ON Director.DirectorID = FilmDetails.DirectorID
GROUP BY Director.Name
HAVING COUNT(*) > 1;