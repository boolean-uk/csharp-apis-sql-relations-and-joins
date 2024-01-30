SELECT title, name FROM films
JOIN directors ON films.director_fk_id = directors.id
JOIN people ON directors.people_fk_id = people.id
WHERE directors.country = 'USA';