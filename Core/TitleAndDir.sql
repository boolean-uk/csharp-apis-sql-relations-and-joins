SELECT Title, Director.Name AS Director_Name 
FROM Film 
INNER JOIN Director on Film.director_id = Director.director_id;
