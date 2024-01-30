--Q3 Movies where director, star or writes has a name that contains the letter C. (ILIKE for case insensitive)
SELECT 
film_title AS "Title",
CONCAT (pdir.person_first_name, ' ', pdir.person_last_name) AS "Director", 
CONCAT (psta.person_first_name, ' ', psta.person_last_name) AS "Star",
CONCAT (pwri.person_first_name, ' ', pwri.person_last_name) AS "Writer"
FROM film
JOIN director ON film_fk_director = director_id
JOIN star ON film_fk_star = star_id
JOIN writer ON film_fk_writer = writer_id
JOIN person pdir ON pdir.person_id = director_fk_person
JOIN person psta ON psta.person_id = star_fk_person
JOIN person pwri ON pwri.person_id = writer_fk_person
WHERE 
pdir.person_first_name ILIKE '%C%' OR 
pdir.person_last_name ILIKE '%C%' OR 
psta.person_first_name ILIKE '%C%' OR 
psta.person_last_name ILIKE '%C%' OR 
pwri.person_first_name ILIKE '%C%' OR 
pwri.person_last_name ILIKE '%C%';