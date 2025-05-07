SELECT films.title, release_years.release_year as released_year
FROM films
INNER JOIN release_years ON release_years.id = films.year_id
WHERE release_years.release_year < 1970 ;