-- Show directors and film titles for films with a score of 8 or higher
SELECT
  m.title,
  p.name AS Director
FROM 
  Movies m
LEFT JOIN 
  People p ON p.id = m.director_fk
WHERE m.rating >= 8;
