SELECT title, writer.name, writer.email
FROM film
INNER JOIN writer ON film.writer_id=writer.id WHERE writer.email LIKE '%email%';