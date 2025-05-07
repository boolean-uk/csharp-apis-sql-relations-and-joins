#### Show the title, director and star name for all films

SELECT f.title, d.director, s.star FROM films AS f JOIN directors AS d ON f.director_id = d.id
JOIN stars AS s ON f.star_id = s.id; 