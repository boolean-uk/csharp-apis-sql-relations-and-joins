SELECT f.title, p.name FROM Films f 
  INNER JOIN Directors d ON f.director_id_fk = d.id
  INNER JOIN People p ON d.person_id_fk = p.id;