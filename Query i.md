SELECT film.title, director.name AS director_name
FROM film
JOIN director ON film.director_id = director.id;


| title                 | director_name          |
| --------------------- | ---------------------- |
| 2001: A Space Odyssey | Stanley Kubrick        |
| Star Wars: A New Hope | George Lucas           |
| To Kill A Mockingbird | Robert Mulligan        |
| Titanic               | James Cameron          |
| Dr Zhivago            | David Lean             |
| El Cid                | Anthony Mann           |
| Voyage to Cythera     | Theodoros Angelopoulos |
| Soldier of Orange     | Paul Verhoeven         |
| Three Colours: Blue   | Krzysztof Kieslowski   |
| Cyrano de Bergerac    | Jean-Paul Rappeneau    |