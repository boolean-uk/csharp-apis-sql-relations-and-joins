-- 3. Show the title of films where the director is from the USA

SELECT f.title
FROM films f
LEFT JOIN directors d ON f.directorid_fk = d.id
WHERE d.country = 'USA';