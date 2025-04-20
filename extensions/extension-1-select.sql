--i
SELECT title, name
    FROM films
    JOIN director ON films.director_id = director.id
    JOIN people ON director.people_id = people.id;