SELECT f.title FROM Films f 
  INNER JOIN Directors d ON f.director_id_fk = d.id
  WHERE d.country = 'USA';