# Core

## i
```sql
SELECT film.title, director.name FROM film JOIN director ON film.director_id = director.director_id
```

## ii
```sql
SELECT film.title, director.name, star.name FROM film JOIN director ON film.director_id = director.director_id JOIN star ON film.star_id = star.star_id
```

## iii
```sql
SELECT film.title FROM film JOIN director ON film.director_id = director.director_id WHERE director.country = 'USA'
```

## iv
```sql
SELECT film.title FROM film JOIN director ON film.director_id = director.director_id JOIN writer ON film.film_id = writer.writer_id WHERE director.name = writer.name
```

## v
```sql
SELECT film.title, director.name FROM film JOIN director ON film.director_id = director.director_id WHERE film.score > 7
```

## vi
```sql
SELECT film.title, star.name FROM film JOIN star ON film.star_id = star.star_id WHERE star.birthday > '1950-01-01'

SELECT film.title, star.name FROM film JOIN star ON film.star_id = star.star_id WHERE star.name LIKE 'Jul%'

SELECT film.title, director.name FROM film JOIN director ON film.director_id = director.director_id WHERE NOT director.country = 'USA' AND director.name NOT LIKE '%ea%'

SELECT director.name FROM film JOIN director ON film.director_id = director.director_id JOIN writer ON film.film_id = writer.writer_id WHERE director.name = writer.name

SELECT star.name FROM star WHERE EXTRACT(MONTH FROM star.birthday) = 4

```