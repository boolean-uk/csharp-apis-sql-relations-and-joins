SELECT title 
FROM films f
	INNER JOIN worked_on w1 ON (f.id = w1.film)
	INNER JOIN worked_on w2 ON (f.id = w2.film)
WHERE w1.role = 'Director' AND w2.role = 'Writer' AND w1.person = w2.person;
