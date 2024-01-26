#### show writers who have written the historical genre

SELECT p.person FROM films AS f 
JOIN writers AS w ON f.star_id = w.id 
JOIN people AS p ON w.person_id = p.id
WHERE f.genre = 'Historical'; 