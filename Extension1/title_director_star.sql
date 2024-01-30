SELECT title, d.name, s.name FROM films
JOIN directors ON films.director_fk_id = directors.id
JOIN stars ON films.star_fk_id = stars.id
JOIN people d ON directors.people_fk_id = d.id
JOIN people s ON stars.people_fk_id = s.id;