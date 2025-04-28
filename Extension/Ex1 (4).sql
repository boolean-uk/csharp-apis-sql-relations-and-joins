SELECt * FROM Film 
INNER JOIN People AS Director on Film.Director_Id = Director.Person_ID
INNER JOIN People AS Writer on Film.Writer_ID = Writer.Person_ID
WHERE Director.Name = Writer.Name;