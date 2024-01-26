--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
SELECT title, director.name, director.country
FROM film
INNER JOIN director ON director_id=director.id WHERE director.country != 'USA';