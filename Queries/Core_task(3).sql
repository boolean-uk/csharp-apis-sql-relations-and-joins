
SELECT f.title
FROM film AS f
LEFT JOIN director AS d
ON f.director_id = d.director_id
WHERE d.director_country = 'USA';



