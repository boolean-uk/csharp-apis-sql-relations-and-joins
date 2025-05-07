--Show titles and writers where writers emials contain 'r'

SELECT film.title, writer.name 
FROM  film
JOIN writer ON film.writer_id = writer.id
WHERE writer.email LIKE '%r%';


--Show films and stars where stars dob > 1944
SELECT film.title, star.name 
FROM film
JOIN star on film.star_id = star.id
WHERE star.dob > '1944-01-23';


-- Show film where genre = thriller, and rating > 7
SELECT film.title
FROM film 
WHERE film.genre LIKE '%Thriller%' and film.score > 7;


--Show films and directors where country is usa and title contains p 
SELECT film.title, director.name
FROM film
LEFT JOIN director ON film.director_id = director.id
WHERE director.country LIKE '%USA%' AND film.title LIKE '%p%';




--SHow films and directors where country is not usa 
SELECT film.title, director.name
FROM film
LEFT JOIN director ON film.director_id = director.id
WHERE director.country NOT LIKE '%USA%'
