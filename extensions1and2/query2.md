#### Show the title, director and star name for all films

SELECT f.title, p1.person AS director, p2.person AS star FROM films AS f 
JOIN directors as d ON f.director_id = d.id
JOIN stars as s ON f.director_id = s.id
JOIN people as p1 ON d.person_id = p1.id
JOIN people as p2 ON s.person_id = p2.id;