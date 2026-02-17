-- Show the title and director name for all films
SELECT f.title, p.name FROM films f
LEFT JOIN directors d ON d.film_fk = f.id
LEFT JOIN people p ON p.id = d.person_fk