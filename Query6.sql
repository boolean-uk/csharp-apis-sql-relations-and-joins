-- My own Queries

-- 1 Show film titles and their directors country 

SELECT film.title, director.directorCountry
FROM film
JOIN director ON film.directorId = director.directorId;


-- 2 Show film titles and their stars
SELECT film.title, star.starName
FROM film
LEFT JOIN star ON film.starId = star.starId;

--2 Refactored 
SELECT film.title AS FilmTitle, people.peopleName AS StarName
FROM film
LEFT JOIN people ON film.starid = people.personid;




--3 Show stars and their birthday only where films have a rating of 9 or more

SELECT starName, starDOB
FROM film
LEFT JOIN star ON film.starId = star.starId
WHERE film.score >= 9;

-- 3 Refactored 

SELECT PeopleName AS StarName, StarDOB
FROM Film film
LEFT JOIN People  ON film.StarId = people.personId
LEFT JOIN Star  ON film.StarId = star.starId
WHERE film.Score >= 9;





-- 4 Show writer and writeremail only where films have a rating of 7 or less

SELECT writerName, writerEmail
FROM film
LEFT JOIN writer ON film.writerId = writer.writerId
WHERE film.score <=7;

-- 4 Refactored

SELECT PeopleName AS WriterName, WriterEmail
FROM Film 
LEFT JOIN People  ON WriterId = PersonId
LEFT JOIN Writer  ON WriterId = WriterId
WHERE Score <= 7;



-- 5 Show film titles, star names and their birthday for films between 1960 and 1980
SELECT film.title, star.starName, star.stardob
FROM film
JOIN star ON film.starId = star.StarId
WHERE year BETWEEN 1960 AND 1980;

-- 5 Refactored

SELECT title, PeopleName AS StarName, StarDOB
FROM Film
LEFT JOIN People  ON film.StarId = PersonId
LEFT JOIN Star  ON StarId = StarId
WHERE Year BETWEEN 1960 AND 1980;