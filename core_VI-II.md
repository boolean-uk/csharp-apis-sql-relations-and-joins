--VI. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--VI.II show the year the movie was released in relation to the date of birth of the star
--SELECT film.title, film.year_released, star.dob FROM film INNER JOIN star ON film.star_id = star.id