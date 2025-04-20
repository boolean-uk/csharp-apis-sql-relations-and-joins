--i 
SELECT title, director_name
	FROM films
	JOIN director ON films.director_id = director.id;
	
--ii 
SELECT title, director_name, star_name
	FROM films
	JOIN director ON films.director_id = director.id
	JOIN star ON films.star_id = star.id;

--iii 
SELECT title 
	FROM films
	JOIN director ON films.director_id = director.id
	WHERE director_country = 'USA';

--iv 
SELECT title 
	FROM films 
	JOIN director ON films.director_id = director.id
	JOIN writer ON films.writer_id = writer.id 
	WHERE director_name = writer_name;

--v 
SELECT director_name, title 
	FROM films 
	JOIN director ON films.director_id = director.id
	WHERE score >= 8;

--vi 
SELECT director_name, genre
	FROM films
	RIGHT JOIN director ON films.director_id = director.id 
	ORDER BY genre;

--vii 
SELECT title, director_name, director_country, writer_name, star_name
	FROM films
	JOIN director ON films.director_id = director.id
	JOIN writer ON films.writer_id = writer.id 
	JOIN star ON films.star_id = star.id 
	ORDER BY director.director_country ASC;

--viii
SELECT director_country, COUNT(*)
	FROM films
	JOIN director ON films.director_id = director.id
	GROUP BY director_country;

--ix
SELECT title, star_name, score 
	FROM films
	JOIN star ON films.star_id = star.id
	ORDER BY score DESC;

--x
SELECT star_name, star_date_of_birth
	FROM films 
	JOIN director ON films.director_id = director.id
	JOIN star ON films.director_id = star.id
	WHERE director_country = 'USA' OR director_country = 'UK' OR director_country = 'Canada'
	ORDER BY star.star_date_of_birth DESC;