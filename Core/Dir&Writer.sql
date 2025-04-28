SELEct * FROM Film 
Join director on Film.Director_Id = Director.Director_ID
Join writer on Film.Writer_ID = Writer.Writer_ID
WHERE Director.Name = Writer.Name;