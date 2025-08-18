-- Bonus query 2: Show the number of roles each person has
SELECT
  p.name AS Person,
  Count(r.name)  AS roles_count
FROM People p
LEFT JOIN PeopleRole pr ON p.id = pr.people_fk
LEFT JOIN Roles r ON pr.role_fk = r.id
GROUP BY p.name, p.id
HAVING Count(r.name) > 1
ORDER BY p.id, Count(r.name);
