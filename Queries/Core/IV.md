Show only those films where the writer and the director are the same person

SELECT Title, Director, writer
FROM Film
WHERE Director = Writer;
