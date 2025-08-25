SELECT f.title, dp.name, sp.name FROM Films f
  INNER JOIN Directors d ON f.director_id_fk = d.id
  INNER JOIN People dp ON d.person_id_fk = dp.id
  INNER JOIN Stars s ON f.star_id_fk = s.id
  INNER JOIN People sp ON s.person_id_fk = sp.id;