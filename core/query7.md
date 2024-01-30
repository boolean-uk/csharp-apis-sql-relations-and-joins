#### emails of writer of films published in the 60s

SELECT w.writer_email FROM films AS f 
JOIN writers AS w ON f.star_id = w.id
WHERE f.year >= 1960 AND f.year < 1970; 