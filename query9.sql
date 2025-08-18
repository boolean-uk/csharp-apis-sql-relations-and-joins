-- Bonus query 4: Show how many directors each country has
SELECT c.name, Count(p.country_fk)
FROM People p
LEFT JOIN countries c on c.id = p.country_fk
GROUP BY c.name
ORDER BY Count(p.country_fk);
