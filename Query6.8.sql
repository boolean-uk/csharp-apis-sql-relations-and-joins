SELECT p.Name AS Star, p.DOB
FROM People p
JOIN PeopleRole pr ON p.PersonID = pr.PersonID
JOIN Role r ON pr.RoleID = r.RoleID
WHERE r.RoleName = 'Star' AND p.DOB >= '1960-01-01'
