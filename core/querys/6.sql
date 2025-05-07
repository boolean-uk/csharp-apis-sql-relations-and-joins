-- Show all stars that played in Drama films
SELECT s.name AS "Star"
FROM Film f
LEFT JOIN FilmStar fs ON fs.FilmFk = f.id
LEFT JOIN Star s ON fs.StarFk = s.id
WHERE f.genre = 'Drama';

-- Show the title and year of release for films with a score higher than the average score.
SELECT f.title AS "Title", f.releaseYear "Release year"
FROM Film f
WHERE f.score > (SELECT AVG(f.score) FROM Film f);

-- List the directors and the number of films they have directed.
SELECT d.name AS "Director", COUNT(*) AS "Number of films"
FROM Director d
LEFT JOIN FilmDirector fd ON d.id = fd.directorFk
GROUP BY d.name;

-- Find the star who has appeared in the most films.
SELECT s.name AS "Star", COUNT(*) AS "Number of films"
FROM Star s
LEFT JOIN FilmStar fs ON s.id = fs.starFk
GROUP BY s.name
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Find the average score for films released in each decade.
SELECT FLOOR(releaseYear / 10) * 10 AS "Decade", AVG(f.score) AS "Average score"
FROM Film f
GROUP BY FLOOR(releaseYear / 10) * 10;