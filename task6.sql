-- Task 6 - Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

-- 1 - Show title and star name for all films with a score lower than 6
SELECT 
  f.title,
  f.score,
  d.full_name AS star
FROM films f
INNER JOIN people d ON d.person_id = f.star_id
WHERE score < 6;

-- 2 - Show all films with their year and genre, ordered by year
SELECT 
  f.title,
  f.year,
  f.genre,
  d.full_name AS star
FROM films f
INNER JOIN people d ON d.person_id = f.star_id
ORDER BY f.year;

-- 3 - Show the title and star name for all films in the 'Drama' genre
SELECT 
  f.title,
  s.full_name AS star
FROM films f
INNER JOIN people s ON s.person_id = f.star_id
WHERE f.genre = 'Drama';

-- 4 - Show the title and star name for all films where the stars date of birth is before 1950
SELECT 
  f.title,
  s.full_name AS star,
  s.dob
FROM films f
INNER JOIN people s ON s.person_id = f.star_id
WHERE s.dob < '1950-01-01';

-- 5 - Show the number of films directed by each country
SELECT 
  d.country,
  COUNT(f.film_id) AS number_of_films
FROM films f
INNER JOIN people d ON d.person_id = f.director_id
GROUP BY d.country
ORDER BY number_of_films DESC;