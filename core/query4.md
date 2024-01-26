#### Show only those films where the writer and the director are the same person

SELECT title FROM films AS f 
JOIN directors AS d ON f.director_id = d.id 
JOIN writers AS w ON f.writer_id = w.id
WHERE d.director = w.writer; 