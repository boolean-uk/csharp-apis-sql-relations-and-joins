-- Show the title, director and star name for all films
SELECT f.title, d.name, s.name FROM films f LEFT JOIN directors d ON f.id = d.id LEFT JOIN stars s ON f.id = s.id
