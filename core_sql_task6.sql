
--Show the titles of films and their genres
SELECT title, genre
FROM Films

--Show the names of stars and their dates of birth
SELECT star_name, star_dob
FROM Stars

--Show the title, director name, and writer name for all films:
SELECT Films.title, Directors.director_name, Writers.writer_name
FROM Films
JOIN Directors ON Films.director_id = Directors.director_id
JOIN Writers ON Films.writer_id = Writers.writer_id

 
--Show the title of films along with their directors' countries
SELECT Films.title, Directors.director_country
FROM Films
JOIN Directors ON Films.director_id = Directors.director_id

--Show the title of films, director names, and star names for films released after 1990, including films without directors or stars
SELECT Films.title, Directors.director_name,Stars.star_name
FROM Films
JOIN Directors ON Films.director_id = Directors.director_id
JOIN Stars ON Films.star_id = Stars.star_id
WHERE Films.year > 1990