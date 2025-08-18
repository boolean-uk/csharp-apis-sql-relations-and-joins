--Show the title of films where the director is from the USA
SELECT m.name FROM persons as p
LEFT JOIN movies as m ON m.director_fk = p.id
LEFT JOIN countries as c ON p.country_fk = c.id
WHERE c.name = 'USA'