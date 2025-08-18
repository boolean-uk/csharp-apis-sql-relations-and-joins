-- Bonus 5: List movies that are either Historical or Romance
Select m.title, g.name AS Genre
FROM movies m
LEFT JOIN genres g on m.genre_fk = g.id
WHERE g.name = 'Historical' OR g.name = 'Romance';
