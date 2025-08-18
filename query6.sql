--movies where the star is born after 1950
SELECT m.title, p2.name AS Star, p2.dob FROM movies m
LEFT JOIN people p2 ON p2.id = m.star
WHERE p2.dob > '1950-01-01'