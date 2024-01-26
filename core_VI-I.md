--VI. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--VI.I  show the star name of films in the drama genre
--SELECT star.name, film.genre FROM film INNER JOIN star ON star.id = film.star_id WHERE film.genre ='Drama'