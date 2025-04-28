Select Title, Director.Country as Director_Country From film
Join Director on Film.Director_Id = Director.Director_ID
WHERE Director.Country = 'USA';