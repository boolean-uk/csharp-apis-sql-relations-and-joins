SELECT f.Title, d.Name AS Director, s.Name AS Star
FROM Film f
JOIN PeopleRole prd ON f.FilmID = prd.FilmID
JOIN People d ON prd.PersonID = d.PersonID
JOIN Role rd ON prd.RoleID = rd.RoleID AND rd.RoleName = 'Director'
JOIN PeopleRole prs ON f.FilmID = prs.FilmID
JOIN People s ON prs.PersonID = s.PersonID
JOIN Role rs ON prs.RoleID = rs.RoleID AND rs.RoleName = 'Star'










