### stars in films born before 1950

SELECT f.title, s.star, s.dob FROM films AS f 
JOIN stars AS s ON f.star_id = s.id
WHERE EXTRACT(YEAR FROM s.dob) < 1950;