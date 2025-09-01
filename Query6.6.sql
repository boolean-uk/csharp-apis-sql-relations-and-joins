SELECT f.Title, p.Name AS Star
FROM Film f
JOIN PeopleRole pr ON f.FilmID = pr.FilmID
JOIN People p ON pr.PersonID = p.PersonID
JOIN Role r ON pr.RoleID = r.RoleID
WHERE r.RoleName = 'Star' AND f.Score <= 6








