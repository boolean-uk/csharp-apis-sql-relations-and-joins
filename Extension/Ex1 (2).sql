SELECT Title, Director.Name AS Director_Name, Star.Name AS Star_Name FROM film 
inner join People AS Director on Film.Director_ID = Director.Person_ID
inner join People AS Star on Film.Star_ID = Star.Person_ID;