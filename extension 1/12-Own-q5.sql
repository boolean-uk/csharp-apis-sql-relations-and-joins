--Q5 Get movies by writers who are born in April
SELECT 
film_title AS "Title",
CONCAT(person_first_name, ' ', person_last_name) AS "Star",
star_dob AS "Date of Birth"
FROM film
JOIN star ON film_fk_writer = star_id
JOIN person ON person_id = star_fk_person
WHERE
EXTRACT (MONTH FROM star_dob) = 4;