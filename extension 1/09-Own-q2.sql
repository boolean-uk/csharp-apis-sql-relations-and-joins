--Q2 Movies where star is born before 1945
SELECT 
film_title AS "Title",
CONCAT(person_first_name, ' ', person_last_name) AS "Star"
FROM film
JOIN star ON film_fk_star = star_id
JOIN person ON person_id = star_fk_person
WHERE star_dob < '1945-01-01';