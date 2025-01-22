-- Show the title and director name for all films


SELECT m.title, p.name FROM movies m INNER JOIN movie_director md ON md.id = m.director_id  INNER JOIN persons p ON p.id = md.persons_id;