-- Show the title, director and star name for all films
SELECT f.title, dir.name AS director_name, wri.name AS writer_name, sta.name AS star_name FROM films f
LEFT JOIN directors d ON d.film_fk = f.id
LEFT JOIN people dir ON dir.id = d.person_fk

LEFT JOIN writers w ON w.film_fk = f.id
LEFT JOIN people wri ON wri.id = w.person_fk

LEFT JOIN filmcast fc ON fc.film_fk = f.id
LEFT JOIN people sta ON sta.id = fc.person_fk