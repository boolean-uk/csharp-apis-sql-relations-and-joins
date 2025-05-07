--Show the title and director name for all films
SELECT f.title,d.name from films f
LEFT JOIN directors d ON f.directorId = d.id

--Show the title, director and star name for all films
SELECT f.title,d.name AS DirectorName,s.name AS StarName from films f
LEFT JOIN directors d ON f.directorId = d.id
LEFT JOIN stars s ON f.starId = s.id

--Show the title of films where the director is from the USA
SELECT f.title,d.name AS DirectorName from directors d
LEFT JOIN films f ON d.id = f.directorId 
WHERE d.country LIKE 'USA'

--Show only those films where the writer and the director are the same person
SELECT f.title,d.name AS directorName,w.name as writerName from films f
LEFT JOIN directors d ON f.directorId = d.id
LEFT JOIN writers w ON f.directorId = w.id
WHERE w.name = d.name

--Show directors and film titles for films with a score of 8 or higher
SELECT f.title,d.name,f.score from films f
LEFT JOIN directors d ON f.directorId = d.id
WHERE score >= 8

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--List the names of directors who have directed films with a score of 9 or higher.
SELECT d.name from directors d
LEFT JOIN films f ON d.id = f.directorID
WHERE score >= 9

--Display the names of writers along with the titles of films they have contributed to.
SELECT w.name, f.title from writers w
LEFT JOIN films f ON w.id = f.writerId

--List the titles of Historical films where the star's date of birth is before the year 1970.
SELECT f.title,s.name from films f
LEFT JOIN stars s ON f.starId = s.id
WHERE genre = 'Historical' AND DOB <= '19700101'

--Show the titles of films along with the names and email addresses of their respective writers.
SELECT f.title,w.name,w.email from films f
LEFT JOIN writers w ON f.writerId = w.id

--Display the names of stars along with the titles and genres of films they have starred in.
SELECT s.name,f.title,f.genre from stars s
LEFT JOIN films f ON f.writerId = s.id