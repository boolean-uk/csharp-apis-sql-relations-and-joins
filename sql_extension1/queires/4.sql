SELECT films.title, directors_people.fullname AS director, writers_people.fullname AS writer
FROM films

LEFT JOIN directors ON directors.id = films.director_id
LEFT JOIN writers ON films.writer_id = writers.id

LEFT JOIN people AS writers_people ON writers_people.id = writers.person_id
LEFT JOIN people AS directors_people ON directors_people.id = directors.person_id

WHERE writers_people.fullname = directors_people.fullname;