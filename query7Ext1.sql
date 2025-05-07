-- Show the title and director name for all films
SELECT f.title, p.name
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN people p ON personId = p.id

-- Show the title, director and star name for all films
SELECT f.title, p1.name, p2.name
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN stars s ON f.id = s.id
LEFT JOIN people p1 ON d.personid = p1.id
LEFT JOIN people p2 ON s.personId = p2.id

-- Show only those films where the writer and the director are the same person
SELECT f.title, pd.name, pw.name
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN writers w ON f.id = w.id
LEFT JOIN people pd ON d.personid = pd.id
LEFT JOIN people pw ON w.personid = pw.id
WHERE pd.name = pw.name

-- Show directors and film titles for films with a score of 8 or higher
SELECT p.name, f.title
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN people p ON d.personid = p.id
WHERE f.score >= 8

-- Show the director and email for films where the director and writer was the same person
SELECT pd.name, w.email
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN writers w ON f.id = w.id
LEFT JOIN people pd ON d.personid = pd.id
LEFT JOIN people pw ON w.personid = pw.id
WHERE pw.name = pd.name

-- Show the film title, star name and director name for all films with Star Wars in the title
SELECT f.title, ps.name AS "starName", pd.name AS "directorName"
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN stars s ON f.id = s.id
LEFT JOIN people pd ON d.personid = pd.id
LEFT JOIN people ps ON s.personid = ps.id
WHERE f.title LIKE '%Star Wars%'

-- Show all film titles, star names, and star birthdates, sorted ascending based on the stars birthdate
SELECT f.title, ps.name AS "starName", s.birthdate AS "starBirthdate"
FROM films f
LEFT JOIN stars s ON f.id = s.id
LEFT JOIN people ps ON s.personid = ps.id
ORDER BY s.birthdate ASC

-- Show how many films George Lucas was the director of
SELECT pd.name, COUNT(f.id)
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN people pd ON d.personid = pd.id
WHERE pd.name = 'George Lucas'
GROUP BY pd.name
