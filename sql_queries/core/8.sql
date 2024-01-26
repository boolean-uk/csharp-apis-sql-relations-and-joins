SELECT films.title, directors.full_name, stars.full_name, writers.full_name, release_years.release_year, genres.genre, scores.score
FROM films
INNER JOIN directors ON films.director_id = directors.id
INNER JOIN stars ON films.star_id = stars.id
INNER JOIN writers ON films.writer_id = writers.id
INNER JOIN release_years ON films.year_id = release_years.id
INNER JOIN genres ON films.genre_id = genres.id
INNER JOIN scores ON films.score_id = scores.id