SELECT films.title, directors.full_name as director, scores.score
FROM films
INNER JOIN directors ON directors.id = films.director_id
INNER JOIN scores ON films.score_id = scores.id
WHERE scores.score >= 8;