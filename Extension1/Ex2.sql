SELECT films.title, director_people.name AS director_name, star_people.name AS star_name
FROM films
JOIN directors ON films.director_id = directors.id
JOIN people AS director_people ON directors.person_id = director_people.id
JOIN stars ON films.star_id = stars.id
JOIN people AS star_people ON stars.person_id = star_people.id;