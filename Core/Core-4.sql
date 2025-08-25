SELECT * FROM Films f 
  INNER JOIN Directors d ON f.director_id_fk = d.id
  INNER JOIN Writers w ON f.writer_id_fk = w.id
WHERE d.name = w.name;