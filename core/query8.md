### film, director and score descending order by score

SELECT f.title, d.director, f.score FROM films AS f 
JOIN directors AS d ON f.star_id = d.id
ORDER BY score DESC; 