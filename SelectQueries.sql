/*Show title and director for all films*/
SELECT title, director.name as director
FROM film
JOIN director ON film.directorid = director.directorid;

/*Show title, director and star name for all films*/
SELECT title, director.name as director, star.name as star
FROM film
JOIN director ON film.directorid = director.directorid
JOIN star ON film.starid = star.starid;

/*Show title where director is from USA*/
SELECT title, director.name as director
FROM film
JOIN director ON film.directorid = director.directorid
WHERE director.country = 'USA';

/*Show title, director and star name for all films*/
SELECT title, director.name as director
FROM film
JOIN director ON film.directorid = director.directorid
JOIN writer ON film.writerid = writer.writerid
WHERE director.name LIKE writer.name;

/*Show films with a score of 8 and higher*/
SELECT title, director.name as director, score
FROM film
JOIN director ON film.directorid = director.directorid
WHERE score >= 8;

/*5 more queries*/

/*Show titles and star including drama genre*/
SELECT film.title, star.name as star
FROM film
JOIN star ON film.starid = star.starid
WHERE film.genre = 'Drama';

/*Show titles, star and director after 1980s*/
SELECT film.title, star.name as star, released
FROM film
JOIN star ON film.starid = star.starid
JOIN director ON film.directorid = director.directorid
WHERE film.released > 1980;

/*Show the star how many times they have acted in historical movies*/
SELECT star.name, COUNT(film.genre) as starred_in_historical_movies
FROM film
JOIN star ON film.starid = star.starid
WHERE genre = 'Historical'
GROUP BY star.name;

/*Show films outside of USA with a higher score of 6*/
SELECT title, director.name as director, writer.name as writer, score
FROM film
JOIN director ON film.directorid = director.directorid
JOIN writer ON film.writerid = writer.writerid
WHERE director.country != 'USA' AND film.score > 6;

/*Show films that uses colon in their title*/
SELECT title, star.name as star, director.name as director, writer.name as writer, score
FROM film
JOIN director ON film.directorid = director.directorid
JOIN writer ON film.writerid = writer.writerid
JOIN star ON film.starid = star.starid
WHERE title LIKE '%:%';
