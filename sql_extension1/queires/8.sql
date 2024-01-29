SELECT 
	films.title,
	director_people.fullname AS director,
	star_people.fullname AS star,
	writer_people.fullname AS writer,
	release_years.release_year,
	genres.genre,
	scores.score
FROM films
LEFT JOIN directors ON films.director_id = directors.id
LEFT JOIN stars ON films.star_id = stars.id
LEFT JOIN writers ON films.writer_id = writers.id
LEFT JOIN release_years ON films.year_id = release_years.id
LEFT JOIN genres ON films.genre_id = genres.id
LEFT JOIN scores ON films.score_id = scores.id
LEFT JOIN people AS director_people ON director_people.id = directors.person_id
LEFT JOIN people AS star_people ON star_people.id = stars.person_id
LEFT JOIN people AS writer_people ON writer_people.id = writers.person_id;