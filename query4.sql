-- Show only those films where the writer and the director are the same person
SELECT
  title
FROM 
  Movies
WHERE director_fk = writer_fk;
