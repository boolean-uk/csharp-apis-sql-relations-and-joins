#### show writers who have written the historical genre

SELECT w.writer FROM films AS f 
JOIN writers AS w ON f.star_id = w.id 
WHERE f.genre = 'Historical'; 