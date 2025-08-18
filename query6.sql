-- Bonus query 1: List all people and the roles they have
SELECT
  p.name AS Person,
  String_AGG(r.name, ', ')  AS roles
FROM 
  People p
LEFT JOIN PeopleRole pr ON p.id = pr.people_fk
LEFT JOIN Roles r ON pr.role_fk = r.id
Group BY 
  p.id
ORDER BY p.id;
