--VI. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.


--VI.V Show star and film titles for films with a score of 7 or higher and are of the historical genre
--SELECT star.name, film.title FROM star INNER JOIN film ON star.id = film.star_id WHERE film.score >= 7 AND film.genre = 'Historical'