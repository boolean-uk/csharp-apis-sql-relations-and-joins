--Show only those films where the writer and the director are the same person
SELECT title, director.name, writer.name
FROM film
INNER JOIN writer ON film.writer_id=writer.id
INNER JOIN director ON director.id=film.director_id WHERE director.name=writer.name;