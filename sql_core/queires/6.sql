SELECT films.title, stars.full_name, star_dobs.birthdate
FROM films
INNER JOIN stars ON films.star_id = stars.id
INNER JOIN star_dobs ON stars.dob_id = star_dobs.id
WHERE star_dobs.birthdate < '1950-01-01';