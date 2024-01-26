/*
SELECT d.name AS director_name, 
       f.title AS film_title, 
       f.score AS film_score, 
       f.genre AS film_genre 
FROM directors d
JOIN films f ON d.id = f.director_fk
WHERE f.genre = 'Historical'
ORDER BY f.score DESC;
*/