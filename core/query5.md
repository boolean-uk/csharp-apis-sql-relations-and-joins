#### Show directors and film titles for films with a score of 8 or higher

SELECT d.director, f.title FROM films AS f 
JOIN directors AS d ON f.director_id = d.id 
WHERE f.score >= 8; 