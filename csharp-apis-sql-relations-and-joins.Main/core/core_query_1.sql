-- 1. Show the title and director name for all films

SELECT f.title, d."name" as director FROM films f
LEFT JOIN directors d ON f.directorid_fk = d.id;