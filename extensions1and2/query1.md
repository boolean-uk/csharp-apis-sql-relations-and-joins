#### Show the title and director name for all films

SELECT f.title, p.person FROM films AS f INNER 
JOIN directors as d ON f.director_id = d.id
JOIN people as p ON d.person_id = p.id;