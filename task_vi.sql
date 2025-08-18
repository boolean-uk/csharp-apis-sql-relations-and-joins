SELECT p.name, f.title FROM db_cast c
JOIN people p ON p.id = c.actor_fk
JOIN film f ON c.film_fk = f.id
WHERE f.genre = 'Science Fiction';









