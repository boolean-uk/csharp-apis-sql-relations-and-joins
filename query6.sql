SELECT f.title FROM films f
LEFT JOIN directors d ON d.film_fk = f.id
LEFT JOIN writers w ON w.film_fk = f.id  
WHERE NOT w.person_fk = d.person_fk;