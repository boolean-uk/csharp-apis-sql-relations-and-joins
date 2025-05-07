--Q2 Movies where star is born before 1945
SELECT 
film_title AS "Title",
CONCAT(star_first_name, ' ', star_last_name) AS "Star"
FROM film
INNER JOIN star ON film_fk_star = star_id
WHERE star_dob < '1945-01-01';