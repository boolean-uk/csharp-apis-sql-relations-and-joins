--Star of movies form USA with socore of 10
SELECT p.name FROM persons as p
LEFT JOIN movies as m ON m.star_fk = p.id
WHERE m.score = 10