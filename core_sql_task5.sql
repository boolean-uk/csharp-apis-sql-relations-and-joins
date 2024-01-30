--Show directors and film titles for films with a score of 8 or higher
SELECT films.title, directors.director_name, films.score
FROM films
JOIN directors ON films.director_id = directors.director_id
WHERE score >= 8