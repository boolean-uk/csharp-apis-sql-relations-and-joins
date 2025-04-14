--Show only those films where the writer and the director are the same person
SELECT Films.title
FROM Films
JOIN Directors ON Films.director_id = Directors.director_id
JOIN Writers ON Films.writer_id = Writers.writer_id
WHERE Directors.director_name = Writers.writer_name