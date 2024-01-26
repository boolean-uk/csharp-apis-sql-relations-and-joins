SELECT film.title, director.name AS director_name, star.name AS star_name
FROM film
JOIN director ON film.director_id = director.id
JOIN star ON film.star_id = star.id;


| title                 |director_name           | star_name         |
| --------------------- | ---------------------- | ----------------- |
| 2001: A Space Odyssey | Stanley Kubrick        | Keir Dullea       |
| Star Wars: A New Hope | George Lucas           | Mark Hamill       |
| To Kill A Mockingbird | Robert Mulligan        | Gregory Peck      |
| Titanic               | James Cameron          | Leonardi DiCaprio |
| Dr Zhivago            | David Lean             | Julie Christie    |
| El Cid                | Anthony Mann           | Charlton Heston   |
| Voyage to Cythera     | Theodoros Angelopoulos | Manos Katrakis    |
| Soldier of Orange     | Paul Verhoeven         | Rutger Hauer      |
| Three Colours: Blue   | Krzysztof Kieslowski   | Juliette Binoche  |
| Cyrano de Bergerac    | Jean-Paul Rappeneau    | Gerard Depardieu  |