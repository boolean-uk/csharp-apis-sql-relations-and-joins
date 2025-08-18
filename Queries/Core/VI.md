Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

1. Films by the genre Science Fiction:
SELECT Title, DirectorName, StarName
FROM Film
WHERE Genre = 'Science Fiction';

2. Films with stars born before 1977
SELECT f.Title, f.Star, s.DOB
FROM Film f
JOIN Star s ON f.Star = s.Name
WHERE s.DOB < '1977-01-01';

3. List of stars and their films ordered by DOB
SELECT f.Star, f.Title, s.DOB
FROM Film f
JOIN Star s ON f.Star = s.Name
ORDER BY s.DOB;

4. Writer emails
SELECT f.Title, f.writer, w.Email
FROM Film f
JOIN Writer w ON f.Writer = w.Name;

5. Counts of films of each director
SELECT Director, COUNT(*) AS NumberFilms
FROM Film
GROUP BY Director;