-- Show the title, director and star name for all films
SELECT m.title, p.name as Director, p2.name as Star
FROM 
  Movies m
LEFT JOIN People p ON p.id = m.director_fk
LEFT JOIN People p2 On p2.id = m.star_fk;
