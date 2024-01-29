SELECT films.title, people.fullname as director, scores.score
FROM films
INNER JOIN directors ON directors.id = films.director_id
INNER JOIN scores ON films.score_id = scores.id
LEFT JOIN people ON people.id = directors.person_id
WHERE scores.score >= 8;