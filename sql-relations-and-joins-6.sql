--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--Show film titles and stars for all films

SELECT Film.Title, Star
FROM Film
INNER JOIN Star ON Film.StarFK = Star.id

--Show film titles, score on ascending order, yaer of production and star 

SELECT Film.Title, Film.Score, Film.Year, Star.Star
FROM Film
INNER JOIN Star ON Film.StarFK = Star.id
ORDER BY Film.Score ASC

--Show film title, the names and emails of writers who have written a film with a score of 8 or higher:

SELECT Film.Title, Writer.Writer, Writer.Writer_Email
FROM Writer
INNER JOIN Film ON Film.WriterFK = Writer.id
WHERE Film.Score >=8;


--Show directors who have directed a film in the 'Drama' genre

SELECT Director.Director
FROM Director
INNER JOIN Film ON Film.DirectorFK = Director.id
WHERE Film.Genre = 'Drama';

--Show the whole table with films, directors, stars and writers

SELECT Film.Title, Director.Director, Director.Director_Country, Star.Star, Star.Star_DOB, Writer.Writer, Writer.Writer_Email, Film.Year, Film.Genre, Film.Score
FROM Film
INNER JOIN Director ON Film.DirectorFK = Director.id
INNER JOIN Star ON Film.StarFK = Star.id
INNER JOIN Writer ON Film.WriterFK = Writer.id