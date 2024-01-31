--Show the title and director name for all films
SELECT f.title,p.name from films f
LEFT JOIN directors d ON f.directorId = d.id
LEFT JOIN people p ON d.personid = p.id

--Show the title, director and star name for all films
SELECT f.title,p1.name AS DirectorName,p2.name AS StarName from films f
LEFT JOIN directors d ON f.directorId = d.id
LEFT JOIN actors s ON f.starId = s.id
LEFT JOIN people p1 ON d.personid = p1.id
LEFT JOIN people p2 ON s.personid = p2.id


--Show the title of films where the director is from the USA
SELECT f.title,p1.name AS DirectorName from directors d
LEFT JOIN films f ON d.id = f.directorId 
LEFT JOIN people p1 ON d.personid = p1.id
WHERE d.country LIKE 'USA'

--Show only those films where the writer and the director are the same person
SELECT f.title,p1.name AS directorName,p2.name as writerName from films f
LEFT JOIN directors d ON f.directorId = d.id
LEFT JOIN writers w ON f.directorId = w.id
LEFT JOIN people p1 ON d.personid = p1.id
LEFT JOIN people p2 ON w.personid = p2.id
WHERE p1.name = p2.name

--Show directors and film titles for films with a score of 8 or higher
SELECT f.title,p1.name,f.score from films f
LEFT JOIN directors d ON f.directorId = d.id
LEFT JOIN people p1 ON d.personid = p1.id
WHERE score >= 8

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--List the names of directors who have directed films with a score of 9 or higher.
SELECT p1.name from directors d
LEFT JOIN films f ON d.id = f.directorID
LEFT JOIN people p1 ON d.personid = p1.id
WHERE score >= 9

--Display the names of writers along with the titles of films they have contributed to.
SELECT p1.name, f.title from writers w
LEFT JOIN films f ON w.id = f.writerId
LEFT JOIN people p1 ON w.personid = p1.id

--List the titles of Historical films where the star's date of birth is before the year 1970.
SELECT f.title,p1.name from films f
LEFT JOIN actor s ON f.starId = s.id
LEFT JOIN people p1 ON s.personid = p1.id
WHERE genre = 'Historical' AND DOB <= '19700101'

--Show the titles of films along with the names and email addresses of their respective writers.
SELECT f.title,w.name,w.email from films f
LEFT JOIN writers w ON f.writerId = w.id
LEFT JOIN people p1 ON w.personid = p1.id

--Display the names of stars along with the titles and genres of films they have starred in.
SELECT p1.name,f.title,f.genre from actor s
LEFT JOIN films f ON f.writerId = s.id
LEFT JOIN people p1 ON s.personid = p1.id