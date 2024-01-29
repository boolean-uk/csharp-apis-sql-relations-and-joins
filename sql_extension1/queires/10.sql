SELECT films.title, genres.genre
FROM films
INNER JOIN genres ON films.genre_id = genres.id
WHERE genres.genre = 'drama';