-- Show the director and email for films where the director and writer was the same person
SELECT d.name, w.email
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN writers w ON f.id = w.id
WHERE w.name = d.name

-- Show the film titles for films where the director was from the USA
SELECT f.title
FROM films f
LEFT JOIN directors d ON f.id = d.id
WHERE d.country = 'USA'

-- Show the film title, star name and director name for all films with Star Wars in the title
SELECT f.title, s.name AS "starName", d.name AS "directorName"
FROM films f
LEFT JOIN directors d ON f.id = d.id
LEFT JOIN stars s ON f.id = s.id
WHERE f.title LIKE '%Star Wars%'

-- Show all film titles, star names, and star birthdates, sorted ascending based on the stars birthdate
SELECT f.title, s.name AS "starName", s.birthdate AS "starBirthdate"
FROM films f
LEFT JOIN stars s ON f.id = s.id
ORDER BY s.birthdate ASC

-- Show how many films George Lucas was the director of
SELECT d.name, COUNT(f.id)
FROM films f
LEFT JOIN directors d on f.id = d.id
WHERE d.name = 'George Lucas'
GROUP BY d.name
