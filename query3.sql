SELECT m.title FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN countries c ON c.id = p.country
where c.country = 'USA'