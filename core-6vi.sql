
-- vi
-- Show movies where star is born before 1950
SELECT
	f.title
FROM films f
RIGHT JOIN stars s on f.star_id = s.id
WHERE s.birth < '1950-01-01';

-- Show movies where star was older than 50 at release
SELECT 
	f.title, s.name "star"
FROM films f
RIGHT JOIN stars s on f.star_id = s.id
WHERE f.year - EXTRACT(YEAR FROM s.birth) > 50;

-- Show Science fiction movies from USA director
SELECT
	f.title, f.genre, d.country
FROM films f
RIGHT JOIN directors d on f.director_id = d.id
WHERE f.genre = 'Science Fiction' AND d.country = 'USA';

-- Show movies with director from USA with perfect score
SELECT 
	f.title, f.score
FROM films f
RIGHT JOIN directors d on f.director_id = d.id
WHERE f.score = 10 AND d.country = 'USA';

-- Show drama movies where director and writer are the same person
SELECT
	f.title, f.year, f.genre, d.name "director and director"
FROM films f
RIGHT JOIN directors d on f.director_id = d.id
RIGHT JOIN writers w on f.writer_id = w.id
WHERE d.name = w.name AND f.genre = 'Drama';

-- Show title, score and director of movies with a score lower than or 5
SELECT 
	f.title, f.score, d.name "director"
FROM films f
RIGHT JOIN directors d on f.director_id = d.id
WHERE f.score <= 5;


