-- Show the title of films where the director is from the USA
SELECT f.title FROM films f LEFT JOIN directors d ON f.id = d.id WHERE d.country = 'USA'
