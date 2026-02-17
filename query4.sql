-- Show only those films where the writer and the director are the same person
SELECT f.title FROM films f
LEFT JOIN directors d ON d.film_fk = f.id
LEFT JOIN writers w ON w.film_fk = f.id  
WHERE w.person_fk = d.person_fk;