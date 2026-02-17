-- Show directors and film titles for films with a score of 8 or higher
SELECT f.title, dir.name FROM films f
LEFT JOIN directors d ON d.film_fk = f.id
LEFT JOIN people dir ON dir.id = d.person_fk
WHERE f.score > 7;
