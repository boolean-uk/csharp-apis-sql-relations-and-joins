--for each country find the number of films that has a director from that country
SELECT d.country AS director_country, count(w.film) AS nr_films
FROM worked_on w INNER JOIN directors d ON (w.person = d.person)
WHERE role = 'Director' 
GROUP BY director_country
ORDER BY nr_films DESC;