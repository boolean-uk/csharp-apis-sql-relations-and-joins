-- Show the title and director name for all films
SELECT f.title, d.name FROM films f LEFT JOIN directors d ON f.id = d.id
