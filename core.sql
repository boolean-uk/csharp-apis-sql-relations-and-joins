--Core 1

SELECT title, directors.name FROM films 
LEFT JOIN directors ON films.id = directors.film_id

--Core 2
SELECT title, directors.name, stars.name FROM films
LEFT JOIN directors ON films.id = directors.film_id
LEFT JOIN stars ON films.id = stars.film_id

--Core 3
SELECT title from films
LEFT JOIN directors ON films.id = directors.film_id
WHERE directors.country iLIKE '%USA%'

--Core 4
SELECT * from films
LEFT JOIN directors ON films.id = directors.film_id
LEFT JOIN writers ON films.id = writers.film_id
WHERE directors."name" = writers."name"

--Core 5
SELECT directors.id, directors."name", directors.country, films.title from directors
LEFT JOIN films ON films.id = directors.film_id
WHERE films.score > 7


--Core 6
--1
SELECT stars."name", films.title from stars
LEFT OUTER JOIN films ON stars.film_id = films.id
WHERE films."year" > 1970
--2
SELECT writers.name, films.genre FROM writers
LEFT JOIN films ON writers.film_id = films.id
WHERE films.genre iLIKE '%Drama'
--3
SELECT films.*, writers.* FROM films
INNER JOIN writers ON films.id = writers.film_id
--4
SELECT * FROM films
FULL OUTER JOIN stars ON stars.film_id = films.id
FULL OUTER JOIN writers ON writers.film_id = films.id
FULL OUTER JOIN directors ON directors.film_id = films.id
--5
SELECT * FROM writers FULL OUTER JOIN directors ON writers."name" = directors."name"