--Show only those films where the writer and the director are the same person

SELECT Film.Title, Director, Writer 
FROM Film
LEFT JOIN Director ON Film.DirectorFK = Director.id
LEFT JOIN Writer ON Film.WriterFK = Writer.id
WHERE Director.Director = Writer.Writer
