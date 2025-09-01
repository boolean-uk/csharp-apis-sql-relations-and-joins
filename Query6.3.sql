SELECT f.Title
FROM Film f
JOIN PeopleRole pr ON f.FilmID = pr.FilmID
JOIN People p ON pr.PersonID = p.PersonID
JOIN Role r ON pr.RoleID = r.RoleID
WHERE r.RoleName = 'Director' AND p.Country = 'USA';









