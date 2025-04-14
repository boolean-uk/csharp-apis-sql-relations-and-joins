SELECT film.title
FROM film
JOIN director ON film.director_id = director.id
WHERE director.country = 'USA';


| title                 |
| --------------------- |
| 2001: A Space Odyssey |
| Star Wars: A New Hope |
| To Kill A Mockingbird |
| El Cid                |