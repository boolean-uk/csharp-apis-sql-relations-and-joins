-- Most recent movies
SELECT title, year, genre.name as Genre
FROM film
         JOIN genre ON film.genre_id = genre.id
ORDER BY year DESC;

-- Bad movies
SELECT title, director.name as Director, score
FROM film
         JOIN director ON film.director_id = director.id
WHERE score < 7;

-- Best score per director
SELECT director.name as Director, MAX(score) as Best_Score
FROM film
         JOIN director ON film.director_id = director.id
GROUP BY director.name
ORDER BY Best_Score DESC;

-- Best score per star
SELECT star.name as Director, MAX(score) as Best_Score
FROM film
         JOIN star ON film.star_id = star.id
GROUP BY star.name
ORDER BY Best_Score DESC;

-- Movies per country
SELECT c.name as Country, COUNT(film.id) as Movies
FROM film
         JOIN director d on film.director_id = d.id
         JOIN countries c on d.country_id = c.id
GROUP BY c.name
ORDER BY Movies DESC;