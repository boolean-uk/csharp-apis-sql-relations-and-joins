SELECT f.Title, d.Name AS Director, w.Name AS Writer
FROM Film f
JOIN PeopleRole prd ON f.FilmID = prd.FilmID
JOIN Role rd ON prd.RoleID = rd.RoleID AND rd.RoleName = 'Director'
JOIN People d ON prd.PersonID = d.PersonID
JOIN PeopleRole prw ON f.FilmID = prw.FilmID
JOIN Role rw ON prw.RoleID = rw.RoleID AND rw.RoleName = 'Writer'
JOIN People w ON prw.PersonID = w.PersonID
WHERE d.Country = 'USA' AND d.Name <> w.Name
