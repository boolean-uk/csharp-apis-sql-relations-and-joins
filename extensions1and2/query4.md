#### Show only those films where the writer and the director are the same person

SELECT title FROM films AS f 
JOIN directors AS d ON f.director_id = d.id 
JOIN writers AS w ON f.writer_id = w.id
JOIN people AS p1 ON d.person_id = p1.id
JOIN people AS p2 ON w.person_id = p1.id
WHERE p1.person = p2.person; 