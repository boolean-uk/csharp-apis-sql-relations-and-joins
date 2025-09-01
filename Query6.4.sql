SELECT f.Title
FROM Film f
JOIN PeopleRole prd ON f.FilmID = prd.FilmID
JOIN Role rd ON prd.RoleID = rd.RoleID AND rd.RoleName = 'Director'
JOIN PeopleRole prw ON f.FilmID = prw.FilmID
JOIN Role rw ON prw.RoleID = rw.RoleID AND rw.RoleName = 'Writer'
JOIN People pd ON prd.PersonID = pd.PersonID
JOIN People pw ON prw.PersonID = pw.PersonID
WHERE pd.Name = pw.Name;
