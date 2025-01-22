--Extension 1

Select f.title, pr.name, r."role"
FROM personrolefilm p
INNER JOIN films f ON p.filmid = f.id
INNER JOIN person pr ON pr.id = p.personid
INNER JOIN role r ON r.id = p.roleid
