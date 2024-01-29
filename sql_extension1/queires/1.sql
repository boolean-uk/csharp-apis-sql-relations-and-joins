SELECT films.title, people.fullname
FROM films
LEFT JOIN directors ON directors.id = films.director_id
LEFT JOIN people ON directors.person_id = people.id;