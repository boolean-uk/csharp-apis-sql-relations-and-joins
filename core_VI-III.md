--VI. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--VI.III show the name of the film, star and writer based on the directors home country not being america 
--SELECT film.title, star.name, writer.name FROM film INNER JOIN star ON film.star_id = star.id JOIN writer ON film.writer_id = writer.id JOIN director ON film.director_id = director.id WHERE director.country != 'USA'