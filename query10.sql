/*Every supporting actor that has a email registered, and their email*/
SELECT a.name, a.email
FROM people p
INNER JOIN cast_members cm ON p.id = cm.actor AND cm.role = 'Supporting Actor'
INNER JOIN people a ON a.id = cm.actor