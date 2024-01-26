SELECT director.name AS director_name, film.title
FROM film
JOIN director ON film.director_id = director.id
WHERE film.score >= 8;


| director_name          | title                 |
| ---------------------- | --------------------- |
| Stanley Kubrick        | 2001: A Space Odyssey |
| Robert Mulligan        | To Kill A Mockingbird |
| David Lean             | Dr Zhivago            |
| Theodoros Angelopoulos | Voyage to Cythera     |
| Paul Verhoeven         | Soldier of Orange     |
| Krzysztof Kieslowski   | Three Colours: Blue   |
| Jean-Paul Rappeneau    | Cyrano de Bergerac    |