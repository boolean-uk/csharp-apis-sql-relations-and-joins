#### number of films by director's country

SELECT d.country, COUNT(f.title) FROM films AS f 
JOIN directors AS d ON f.star_id = d.id 
GROUP BY d.country; 