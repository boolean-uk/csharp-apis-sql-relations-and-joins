SELECT films.title, directors_people.fullname, stars_people.fullname
FROM films
LEFT JOIN directors ON directors.id = films.director_id
LEFT JOIN stars ON stars.id = films.star_id
LEFT JOIN people AS directors_people ON directors_people.id = directors.person_id
LEFT JOIN people AS stars_people ON stars_people.id = stars.person_id;