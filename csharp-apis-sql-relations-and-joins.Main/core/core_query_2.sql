-- 2. Show the title, director and star name for all films

SELECT f.title, d."name" as director, s."name" as star
FROM films f
LEFT JOIN directors d ON f.directorid_fk = d.id
LEFT JOIN stars s ON f.starid_fk = s.id;