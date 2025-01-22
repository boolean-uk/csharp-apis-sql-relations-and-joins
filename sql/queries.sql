-- Core
SELECT title, person.name AS director_name
FROM film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person ON director.person_id = person.person_id;

SELECT
    title,
    director_person.name AS director_name,
    actor_person.name AS star_name
FROM
    film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person AS director_person ON director.person_id = director_person.person_id
    INNER JOIN film_actor ON film.film_id = film_actor.film_id
    INNER JOIN actor ON film_actor.actor_id = actor.actor_id
    INNER JOIN person AS actor_person ON actor.person_id = actor_person.person_id
WHERE 
    film_actor.is_star = TRUE;

SELECT title
FROM film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person ON director.person_id = person.person_id
WHERE
    person.co = 'USA';

SELECT film.*
FROM
    film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person AS director_person ON director.person_id = director_person.person_id
    INNER JOIN writer ON film.writer_id = writer.writer_id
    INNER JOIN person AS writer_person ON writer.person_id = writer_person.person_id
WHERE
    director_person.name = writer_person.name;

SELECT title, director_person.name AS director_name
FROM
    film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person AS director_person ON director.person_id = director_person.person_id
WHERE
    film.score >= 8;

-- Extra

-- Select films who have actors that were born before 14/05/1940
SELECT DISTINCT title, actor_person.name AS actor_name, actor_person.dob AS star_dob
FROM
    film
    INNER JOIN film_actor ON film_actor.film_id = film.film_id
    INNER JOIN actor ON film_actor.actor_id = actor.actor_id
    INNER JOIN person AS actor_person ON actor.person_id = actor_person.person_id
WHERE
    actor_person.dob < TO_DATE('14/05/1940', 'DD/MM/YYYY');

-- Select films and the people in it with a title that contains with 'a '
SELECT film.title, director_person.name AS director, writer_person.name as writer, STRING_AGG(actor_person.name, ', ') as actor
FROM
    film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person AS director_person ON director.person_id = director_person.person_id
    INNER JOIN writer ON film.writer_id = writer.writer_id
    INNER JOIN person AS writer_person ON writer.person_id = writer_person.person_id
    INNER JOIN film_actor ON film_actor.film_id = film.film_id
    INNER JOIN actor ON film_actor.actor_id = actor.actor_id
    INNER JOIN person AS actor_person ON actor.person_id = actor_person.person_id
WHERE
    UPPER(film.title) LIKE '%A %'
GROUP BY film.title, director_person.name, writer_person.name;

-- Select actors who have starred in films with a score of 8 or higher
SELECT DISTINCT actor_person.name AS actor_name
FROM actor
    INNER JOIN person AS actor_person ON actor.person_id = actor_person.person_id
    INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
    INNER JOIN film ON film_actor.film_id = film.film_id
    WHERE film.score >= 8

-- Select people who have participated in the creation of films with a score of 9 or higher
SELECT DISTINCT person.*
FROM 
    person
    LEFT JOIN director ON person.person_id = director.person_id
    LEFT JOIN film AS director_film ON director.director_id = director_film.director_id 
    LEFT JOIN writer ON person.person_id = writer.person_id
    LEFT JOIN film AS writer_film ON writer.writer_id = writer_film.writer_id 
    LEFT JOIN actor ON person.person_id = actor.person_id
    LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
    LEFT JOIN film AS actor_film ON film_actor.film_id = actor_film.film_id
WHERE 
    actor_film.score >= 9 OR director_film.score >= 9 OR writer_film.score >= 9

-- Find collaborations between actors and the number of films they have worked on together. Only usable if using data from alt_inserts/main.sql
SELECT 
    p1.name AS actor_1_name, 
    p2.name AS actor_2_name, 
    COUNT(*) AS collaboration_count
FROM 
    film_actor AS fa1
    INNER JOIN film_actor AS fa2 ON fa1.film_id = fa2.film_id AND fa1.actor_id < fa2.actor_id
    INNER JOIN actor AS a1 ON fa1.actor_id = a1.actor_id
    INNER JOIN actor AS a2 ON fa2.actor_id = a2.actor_id
    INNER JOIN person AS p1 ON a1.person_id = p1.person_id
    INNER JOIN person AS p2 ON a2.person_id = p2.person_id
    GROUP BY p1.name, p2.name
    ORDER BY collaboration_count DESC, actor_1_name, actor_2_name