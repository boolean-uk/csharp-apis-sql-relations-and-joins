SELECT DISTINCT title 
FROM films f
    INNER JOIN worked_on w ON (f.id = w.film)
    INNER JOIN directors d ON (w.person = d.person)
WHERE country = 'USA';
