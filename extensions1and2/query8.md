### film, director and score descending order by score

SELECT f.title, p.person, f.score FROM films AS f 
JOIN directors AS d ON f.star_id = d.id
JOIN people AS p ON d.person_id = p.id
ORDER BY score DESC; 