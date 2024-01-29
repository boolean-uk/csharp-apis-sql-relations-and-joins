SELECT films.title, people.fullname as director, countries.country
FROM films
LEFT JOIN directors ON directors.id = films.director_id
LEFT JOIN countries ON directors.country_id = countries.id
LEFT JOIN people ON people.id = directors.person_id
WHERE countries.country = 'USA';