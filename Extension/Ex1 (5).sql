SELECT People.Name as Director_Name, Title From Film 
Join People on film.director_id = people.person_id
Where Score >= 8;