--VI. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.


--VI.IV show the name and title of all tables
--SELECT film.title, director.name, star.name, writer.name FROM film INNER JOIN director ON film.director_id=director.id JOIN star ON film.star_id=star.id JOIN writer ON film.writer_id=writer.id