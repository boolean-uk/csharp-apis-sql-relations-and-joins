
-- Show only those films where the writer and the director are the same person

SELECT title
FROM Film
JOIN Director ON Film.DirectorId = Director.DirectorId
JOIN Writer ON Film.WriterId = Writer.WriterId AND Writer.WriterName = Director.DirectorName;

-- Refactored for extension

SELECT title
FROM Film
WHERE WriterId = DirectorId

