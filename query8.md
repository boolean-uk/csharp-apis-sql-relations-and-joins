SELECT title, writer.name, score
FROM film
INNER JOIN writer ON writer_id=writer.id WHERE score = 10;