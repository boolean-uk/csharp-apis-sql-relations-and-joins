SELECT Title, Director.Name AS Director_Name, Star.Name AS Star_Name FROM film 
inner join Director on Film.Director_ID = Director.Director_ID
inner join Star on Film.Star_ID = Star.Star_ID;