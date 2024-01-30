### stars in films born before 1950

SELECT f.title, p.person, s.dob FROM films AS f 
JOIN stars AS s ON f.star_id = s.id
JOIN people AS p ON s.person_id = p.id
WHERE EXTRACT(YEAR FROM s.dob) < 1950;