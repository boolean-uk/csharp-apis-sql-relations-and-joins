-- Show all stars that played in Drama films
SELECT p.name AS "Star"
FROM Film f
LEFT JOIN FilmStar fs ON fs.FilmFk = f.id
LEFT JOIN Star s ON fs.StarFk = s.id
INNER JOIN Person p ON s.personFk = p.id;
WHERE f.genre = 'Drama';

-- Show the title and year of release for films with a score higher than the average score.
SELECT f.title AS "Title", f.releaseYear "Release year"
FROM Film f
WHERE f.score > (SELECT AVG(f.score) FROM Film f);

-- List the directors and the number of films they have directed.
SELECT p.name AS "Director", COUNT(*) AS "Number of films"
FROM Director d
LEFT JOIN FilmDirector fd ON fd.directorFk = d.id
INNER JOIN Person p ON d.personFk = p.id
GROUP BY p.name;


-- Find the star who has appeared in the most films.
SELECT p.name AS "Star", COUNT(*) AS "Number of films"
FROM Star s
LEFT JOIN FilmStar fs ON s.id = fs.starFk
INNER JOIN Person p ON s.personFk = p.id
GROUP BY p.name
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Find the average score for films released in each decade.
SELECT FLOOR(releaseYear / 10) * 10 AS "Decade", AVG(f.score) AS "Average score"
FROM Film f
GROUP BY FLOOR(releaseYear / 10) * 10;