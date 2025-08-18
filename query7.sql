--movies there the score is higher than 5 and the director is not from USA
SELECT m.title, c.country, m.score FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN countries c ON c.id = p.country
WHERE m.score > 5
AND c.country != 'USA'