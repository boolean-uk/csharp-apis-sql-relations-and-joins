-- Show the title of films where the director is from the USA
SELECT
  m.title
FROM 
  Movies m
JOIN 
  People p ON p.id = m.director_fk
LEFT JOIN countries c on p.country_fk = c.id
Where c.name = 'USA';
