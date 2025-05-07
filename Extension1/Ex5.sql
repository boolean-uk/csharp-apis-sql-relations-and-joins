SELECT films.title, people.name
FROM films
JOIN directors ON films.director_id = directors.id
JOIN people ON directors.person_id = people.id
WHERE films.score >= 8;