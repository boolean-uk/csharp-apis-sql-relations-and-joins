-- Show the title and director name for all films
SELECT f.title, d."name" AS "Director Name"
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
LEFT JOIN director d ON fid.director = d.id

  
-- Show the title, director and star name for all films
SELECT f.title, d."name" AS "Director Name", s."name" AS "Star Name"
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
LEFT JOIN director d ON fid.director = d.id
LEFT JOIN star s ON fid.filmid = s.id


-- Show the title of films where the director is from the USA
SELECT f.title, d.country AS "Director Country"
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
INNER JOIN director d ON fid.director = d.id AND d.country = 'USA'

-- Show only those films where the writer and the director are the same person
SELECT f.title, d."name" AS "Director Name", w."name" AS "Writer Name"
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
LEFT JOIN writer w ON w.id = fid.writerid
INNER JOIN director d ON fid.directorid = d.id AND d."name" = w."name"

-- Show directors and film titles for films with a score of 8 or higher
SELECT f.title, d."name" AS "Director Name", f.score
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
INNER JOIN director d ON fid.directorid = d.id AND f.score >= 8


-- THE 5 queries I came up with
  
-- Show stars with the name Keir Duella and film titles 
SELECT f.title, s."name"
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
INNER JOIN star s ON fid.starid = s.id AND s."name" = 'Keir Dullea'

-- Show stars and film titles when the genre is Historical
SELECT f.title, f."genre", s."name"
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
INNER JOIN star s ON fid.starid = s.id AND f."genre" = 'Historical'

-- Show all film titles and writer emails
SELECT f.title, w.writer_email
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
LEFT JOIN writer w ON fid.writerid = w.id

-- Show all film titles and writers starting with E
SELECT f.title, w."name"
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
INNER JOIN writer w ON fid.writerid = w.id AND w."name" LIKE 'E%'

-- Show all film titles and directors before the year 1990
SELECT f.title, d."name" AS "Director Name", f.releaseyear
FROM films f
LEFT JOIN filmid fid ON fid.filmid = f.id
INNER JOIN director d ON fid.directorid = d.id AND releaseyear < 1990

