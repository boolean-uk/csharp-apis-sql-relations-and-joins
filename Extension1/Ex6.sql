-- Show the names of the directors and movies that are in the historical genre
SELECT DISTINCT people.name, films.title
FROM directors
JOIN films ON films.director_id = directors.id
JOIN people ON directors.person_id = people.id
WHERE films.genre = 'Historical';

-- Show the average score of films for each director
SELECT people.name, AVG(films.score) AS average_score
FROM films
JOIN directors ON films.director_id = directors.id
JOIN people ON directors.person_id = people.id
GROUP BY people.name;

-- Show films where the star name starts with M
SELECT films.title, people.name
FROM films
JOIN stars ON films.star_id = stars.id
JOIN people ON stars.person_id = people.id
WHERE people.name LIKE 'M%';

-- List all films along with the director's country
SELECT films.title, directors.country
FROM films
JOIN directors ON films.director_id = directors.id

-- Show the number of films directed by country
SELECT directors.country, COUNT(films.id)
FROM films
JOIN directors ON films.director_id = directors.id
GROUP BY directors.country;