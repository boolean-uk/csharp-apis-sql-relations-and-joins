SELECT title, name
FROM films f INNER JOIN worked_on ON (f.id = film) INNER JOIN persons p ON (p.id = person)
WHERE role = 'Director';
