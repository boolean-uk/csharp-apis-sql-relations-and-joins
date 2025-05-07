--Show directors and film titles for films with a score of 8 or higher
SELECT title, director.name, score
FROM film
INNER JOIN director ON director_id=director.id WHERE score >= 8;