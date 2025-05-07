SELECT films.title, directors.full_name as direct, countries.country
FROM films
INNER JOIN directors ON directors.id = films.director_id
INNER JOIN countries ON directors.country_id = countries.id
WHERE countries.country = 'USA';