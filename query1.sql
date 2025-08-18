[200~-- Show title and director name for all films
SELECT
  m.title,
  p.name AS Director
FROM 
  Movies m
LEFT JOIN 
  People p ON p.id = m.director_fk;
