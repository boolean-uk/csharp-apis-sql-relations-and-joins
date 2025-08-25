SELECT f.title AS film, d.name AS director FROM Films f
  INNER JOIN Directors d ON f.director_id_fk = d.id
  WHERE f.score >= 8;