SELECT f.title FROM films f
LEFT JOIN filmcast fc ON fc.film_fk = f.id
LEFT JOIN people sta ON sta.id = fc.person_fk
WHERE sta.dob = '1974-11-11'