--Q5 Get movies by writers who are born in April
SELECT 
film_title AS "Title",
CONCAT(star_first_name, ' ', star_last_name) AS "Star",
star_dob AS "Date of Birth"
FROM film
INNER JOIN
star ON film_fk_writer = star_id
WHERE
EXTRACT (MONTH FROM star_dob) = 4;