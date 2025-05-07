#### Show directors and film titles for films with a score of 8 or higher

SELECT p.person, f.title FROM films AS f 
JOIN directors AS d ON f.director_id = d.id 
JOIN people AS p ON d.person_id = p.id
WHERE f.score >= 8; 