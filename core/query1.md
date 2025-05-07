#### Show the title and director name for all films

SELECT f.title, d.director FROM films AS f INNER JOIN directors as d ON f.director_id = d.id;