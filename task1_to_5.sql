-- Task 1 - Show the title and director name for all films
SELECT 
  f.title,
  d.full_name AS director
FROM films f
JOIN people d ON d.person_id = f.director_id;


-- Task 2 - Show the title, director and star name for all films
SELECT 
  f.title,
  d.full_name AS director,
  s.full_name AS star 
FROM films f
JOIN people d ON d.person_id = f.director_id
JOIN people s ON s.person_id = f.star_id;

-- Task 3 - Show the title of films where the director is from the USA
SELECT 
  f.title,
  d.full_name AS director,
  d.country
FROM films f
JOIN people d ON d.person_id = f.director_id
WHERE d.country = 'USA';

-- Task 4 - Show only those films where the writer and the director are the same person
SELECT 
  f.title,
  d.full_name AS writer_and_director
FROM films f
INNER JOIN people d ON d.person_id = f.director_id
WHERE f.director_id = f.writer_id;

-- Task 5 - Show directors and film titles for films with a score of 8 or higher
SELECT 
  f.title,
  f.score,
  d.full_name AS director
FROM films f
INNER JOIN people d ON d.person_id = f.director_id
WHERE score > 7;