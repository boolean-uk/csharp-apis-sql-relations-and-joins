# SQL Queries

## Title, Director, Star

```sql
SELECT f.title, d.Name AS director_name, s.name AS star_name 
FROM films AS f 
JOIN directors AS d ON f.director_id = d.id 
JOIN stars AS s ON f.star_id = s.id;
```

## Directors from USA

```sql
SELECT f.title, f.year, d.name, d.country 
FROM films as f 
RIGHT JOIN directors as d ON f.director_id = d.id 
WHERE d.country = 'USA';
```

## Same Director and Writer

```sql
SELECT f.title, f.year, d.name AS director, w.name AS writer 
FROM films f 
JOIN directors d ON f.director_id = d.id 
JOIN writers w on f.star_id = w.id 
WHERE d.name = w.name;
```

## Score Above 8 Director

```sql
SELECT f.title, f.year, f.score, d.name as director 
FROM films f 
JOIN directors d ON f.director_id = d.id 
WHERE f.score >= 8;
```

## 5 Own Created Queries

### Writers and Before 1950

```sql
SELECT f.title, f.year, f.genre, w.name 
FROM films f 
JOIN writers w ON f.writer_id = w.id 
WHERE f.year > 1950;
```

### Stars and Movies They Have Starred In

```sql
SELECT s.name, f.title 
FROM films f 
RIGHT JOIN writers s ON f.writer_id = s.id;
```

### See Stars and Their Genres

```sql
SELECT s.name AS star, f.genre, f.title, d.name AS director 
FROM films f 
JOIN directors d ON f.director_id =d.id 
JOIN stars s ON f.star_id = s.id 
ORDER BY f.genre ASC
```

### All Thrillers with Actor and Director

```sql
SELECT f.title, s.name AS star, f.genre, d.name AS director 
FROM films f 
JOIN directors d ON f.director_id =d.id 
JOIN stars s ON f.star_id = s.id 
WHERE f.genre ='Drama'
```

### All Before 1960 and Their Writer and Director

```sql
SELECT f.title, f.year, w.name AS writer, d.name AS director 
FROM films f 
JOIN directors d ON f.director_id =d.id 
JOIN writers w ON f.writer_id = w.id 
WHERE f.year < 1970
```
