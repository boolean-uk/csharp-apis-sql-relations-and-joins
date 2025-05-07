SELECT films.title
FROM films
JOIN directors ON films.director_id = directors.id
JOIN writers ON films.writer_id = writers.id
JOIN people AS director_people ON directors.person_id = director_people.id
JOIN people AS writer_people ON writers.person_id = writer_people.id
WHERE director_people.name = writer_people.name;