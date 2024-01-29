SELECT films.title, people.fullname, star_dobs.birthdate
FROM films
INNER JOIN stars ON films.star_id = stars.id
INNER JOIN star_dobs ON stars.dob_id = star_dobs.id
INNER JOIN people ON stars.person_id = people.id
WHERE star_dobs.birthdate < '1950-01-01';