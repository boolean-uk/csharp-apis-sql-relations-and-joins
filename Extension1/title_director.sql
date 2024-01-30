SELECT title, name AS director_name FROM films 
JOIN directors ON films.director_fk_id = directors.id 
JOIN people ON directors.people_fk_id = people.id;