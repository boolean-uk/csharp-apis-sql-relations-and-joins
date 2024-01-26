1
Show the titles of films along with the names of their directors and stars where the star's date of birth is after 1950:

SELECT film.title, director.name AS director_name, star.name AS star_name
FROM film
JOIN director ON film.director_id = director.id
JOIN star ON film.star_id = star.id
WHERE star.d_o_b > '1950-01-01';

| title                 | director_name        | star_name         |
| --------------------- | -------------------- | ----------------- |
| Star Wars: A New Hope | George Lucas         | Mark Hamill       |
| Titanic               | James Cameron        | Leonardi DiCaprio |
| Three Colours: Blue   | Krzysztof Kieslowski | Juliette Binoche  |





2
Display the names of writers along with the titles of the films they have written, ordered by the film's release year:

SELECT writer.name AS writer_name, film.title, film.year
FROM film
JOIN writer ON film.writer_id = writer.id
ORDER BY film.year;

| writer_name              | title                 | year |
| ------------------------ | --------------------- | ---- |
| Frederick Frank          | El Cid                | 1961 |
| Harper Lee               | To Kill A Mockingbird | 1962 |
| Boris Pasternak          | Dr Zhivago            | 1965 |
| Arthur C Clarke          | 2001: A Space Odyssey | 1968 |
| George Lucas             | Star Wars: A New Hope | 1977 |
| Erik Hazelhoff Roelfzema | Soldier of Orange     | 1977 |
| Theodoros Angelopoulos   | Voyage to Cythera     | 1984 |
| Edmond Rostand           | Cyrano de Bergerac    | 1990 |
| Krzysztof Kieslowsk      | Three Colours: Blue   | 1993 |
| James Cameron            | Titanic               | 1997 |




3
List the titles of films along with their genres and the names of directors from the USA:

SELECT film.title, film.genre, director.name AS director_name
FROM film
JOIN director ON film.director_id = director.id
WHERE director.country = 'USA';

| title                 | genre           | director_name   |
| --------------------- | --------------- | --------------- |
| 2001: A Space Odyssey | Science Fiction | Stanley Kubrick |
| Star Wars: A New Hope | Science Fiction | George Lucas    |
| To Kill A Mockingbird | Drama           | Robert Mulligan |
| El Cid                | Historical      | Anthony Mann    |



4
Retrieve the names of stars who have not acted in any films (stars with no corresponding records in the film table):

SELECT star.name
FROM star
LEFT JOIN film ON star.id = film.star_id
WHERE film.id IS NULL;

returns No Results




5
Show the titles and release years of films along with the names of their directors and writers for films released after 1990:

SELECT film.title, film.year, director.name AS director_name, writer.name AS writer_name
FROM film
JOIN director ON film.director_id = director.id
JOIN writer ON film.writer_id = writer.id
WHERE film.year > 1990;

| title               | year | director_name        | wrtier_name         |
| ------------------- | ---- | -------------------- | ------------------- |
| Titanic             | 1997 | James Cameron        | James Cameron       |
| Three Colours: Blue | 1993 | Krzysztof Kieslowski | Krzysztof Kieslowsk |