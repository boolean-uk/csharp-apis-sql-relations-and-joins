--build the original table
SELECT DISTINCT f.id, title, director, country, star, dob, writer, email, year, genre, rating
FROM (SELECT f.id as filmid1, p.name AS director, country 
      FROM films f INNER JOIN  worked_on w ON (f.id= film) 
      INNER JOIN persons p ON (w.person = p.id) 
      INNER JOIN directors d ON (p.id = d.person))
INNER JOIN
     (SELECT f.id as filmid2, p.name AS star, dob 
      FROM films f INNER JOIN  worked_on w ON (f.id= film) 
      INNER JOIN persons p ON (w.person = p.id) 
      INNER JOIN stars s ON (p.id = s.person)) ON (filmid1  = filmid2)
INNER JOIN
     (SELECT f.id as filmid3, p.name AS writer, email 
      FROM films f INNER JOIN  worked_on w ON (f.id= film) 
      INNER JOIN persons p ON (w.person = p.id) 
      INNER JOIN writers wr ON (p.id = wr.person)) ON (filmid2 = filmid3)
INNER JOIN films f ON (f.id = filmid3)
