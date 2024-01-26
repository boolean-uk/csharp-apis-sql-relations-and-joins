--Show the title and director name for all films:

SELECT Film.title, People.name 
FROM Film 
JOIN People ON Film.director_id = People.person_id;

--Show the title, director, and star name for all films:

SELECT Film.title, Director.name, Star.name 
FROM Film 
JOIN People AS Director ON Film.director_id = Director.person_id 
JOIN People AS Star ON Film.star_id = Star.person_id;
