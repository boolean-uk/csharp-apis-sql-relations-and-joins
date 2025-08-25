SELECT f.title, d.name AS director, s.name AS star FROM Films f
  INNER JOIN Directors d ON f.director_id_fk = d.id
  INNER JOIN Stars s ON f.star_id_fk = s.id; 