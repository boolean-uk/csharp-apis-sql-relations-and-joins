/*
SELECT f.title AS film_title, 
       p.name AS actor_name,        
FROM "cast" c
JOIN Films f ON c.film_id = f.id
JOIN People p ON c.actor_id = p.id;
*/

