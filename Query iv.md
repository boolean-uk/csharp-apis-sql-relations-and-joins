SELECT film.title
FROM film
JOIN director ON film.director_id = director.id
JOIN writer ON film.writer_id = writer.id
WHERE film.director_id = film.writer_id;


| title                 |
| --------------------- |
| 2001: A Space Odyssey |
| Star Wars: A New Hope |
| To Kill A Mockingbird |
| Titanic               |
| Dr Zhivago            |
| El Cid                |
| Voyage to Cythera     |
| Soldier of Orange     |
| Three Colours: Blue   |
| Cyrano de Bergerac    |