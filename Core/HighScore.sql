SELECT Director.Name as Director_Name, Title From Film 
Join director on film.director_id = director.director_id
Where Score >= 8;
