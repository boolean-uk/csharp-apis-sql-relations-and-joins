SELECT f.title, d.name FROM Films f 
  INNER JOIN Directors d ON f.director_id_fk = d.id;