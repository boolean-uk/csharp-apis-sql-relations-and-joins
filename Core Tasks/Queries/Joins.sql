--Show the title and director name for all films:

SELECT Film.title, Director.name 
FROM Film 
JOIN Director ON Film.director_id = Director.director_id;

--Show the title, director, and star name for all films:

SELECT Film.title, Director.name, Star.name 
FROM Film 
JOIN Director ON Film.director_id = Director.director_id 
JOIN Star ON Film.star_id = Star.star_id;

--Show the title of films where the director is from the USA:

SELECT Film.title 
FROM Film 
JOIN Director ON Film.director_id = Director.director_id 
WHERE Director.country = 'USA';

--Show only those films where the writer and the director are the same person:

SELECT Film.title 
FROM Film 
JOIN Director ON Film.director_id = Director.director_id 
JOIN Writer ON Film.writer_id = Writer.writer_id 
WHERE Director.name = Writer.name;

--Show directors and film titles for films with a score of 8 or higher:
 
SELECT Director.name, Film.title 
FROM Film 
JOIN Director ON Film.director_id = Director.director_id 
WHERE Film.score >= 8;

--Show the title of films and the email of their writers:

SELECT Film.title, Writer.email 
FROM Film 
JOIN Writer ON Film.writer_id = Writer.writer_id;

--Show the name of stars who were born before 1970:

SELECT Star.name 
FROM Star 
WHERE Star.dob < '1970-01-01';

--Show the title of films and the name of their stars where the director is from the UK:

SELECT Film.title, Star.name 
FROM Film 
JOIN Director ON Film.director_id = Director.director_id 
JOIN Star ON Film.star_id = Star.star_id 
WHERE Director.country = 'UK';

--Show the name of directors who directed a film with a score of 10:

SELECT Director.name 
FROM Film 
JOIN Director ON Film.director_id = Director.director_id 
WHERE Film.score = 10;

--Show the title of films and the name of their directors and writers where the star was born after 1980:

SELECT Film.title, Director.name, Writer.name 
FROM Film 
JOIN Director ON Film.director_id = Director.director_id 
JOIN Writer ON Film.writer_id = Writer.writer_id 
JOIN Star ON Film.star_id = Star.star_id 
WHERE Star.dob > '1980-01-01';

