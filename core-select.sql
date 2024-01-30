--Show the title and director name for all films
SELECT
    title,
    people.name director
FROM
    films
    LEFT JOIN directors ON films.director_id = directors.id
    LEFT JOIN people ON directors.person_id = people.id;


--Show the title, director and star name for all films
SELECT
    title,
    directors_people.name director,
    actors_people.name star
FROM
    films
    LEFT JOIN directors ON films.director_id = directors.id
    LEFT JOIN actors ON films.star_id = actors.id
    LEFT JOIN people AS directors_people ON directors.person_id = directors_people.id
    LEFT JOIN people AS actors_people ON actors.person_id = actors_people.id;


--Show the title of films where the director is from the USA
SELECT
    title
FROM
    films
    LEFT JOIN directors ON films.director_id = directors.id
WHERE
    directors.country = 'USA';


--Show only those films where the writer and the director are the same person
SELECT
    title
FROM
    films
    LEFT JOIN directors ON films.director_id = directors.id
    LEFT JOIN writers ON films.writer_id = writers.id
WHERE
    directors.person_id = writers.person_id;


--Show directors and film titles for films with a score of 8 or higher
SELECT
    title,
    people.name director
FROM
    films
    LEFT JOIN directors ON films.director_id = directors.id
    LEFT JOIN people ON directors.person_id = people.id
WHERE
    score >= 8;


--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
SELECT
    title,
    directors_people.name director,
    actors_people.name star,
    writers_people.name writer
FROM
    films
    LEFT JOIN directors ON films.director_id = directors.id
    LEFT JOIN actors ON films.star_id = actors.id
    LEFT JOIN writers ON films.writer_id = writers.id
    LEFT JOIN people AS directors_people ON directors.person_id = directors_people.id
    LEFT JOIN people AS actors_people ON actors.person_id = actors_people.id
    LEFT JOIN people AS writers_people ON writers.person_id = writers_people.id;


