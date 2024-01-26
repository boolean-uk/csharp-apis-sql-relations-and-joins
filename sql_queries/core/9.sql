SELECT 
films.title, 
directors.full_name as director, countries.country as director_country, 
stars.full_name as star, star_dobs.birthdate as star_dob, 
writers.full_name as writer, writers.email as writer_email,
release_years.release_year as year,
genres.genre, 
scores.score
FROM films
INNER JOIN directors ON films.director_id = directors.id
INNER JOIN countries ON directors.country_id = countries.id
INNER JOIN stars ON films.star_id = stars.id
INNER JOIN star_dobs ON stars.dob_id = star_dobs.id
INNER JOIN writers ON films.writer_id = writers.id
INNER JOIN release_years ON films.year_id = release_years.id
INNER JOIN genres ON films.genre_id = genres.id
INNER JOIN scores ON films.score_id = scores.id