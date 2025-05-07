# Core
## Show the title and director name for all films
```sql
SELECT films.title, directors.name
FROM films
INNER JOIN directors ON films.directorid = directors.id;
```
## Show the title, director and star name for all films
```sql
SELECT films.title, directors.name, stars.name
FROM films
INNER JOIN directors ON films.directorid = directors.id
INNER JOIN stars ON films.starid = stars.id;
```
## Show the title of films where the director is from the USA
```sql
SELECT films.title
FROM films
INNER JOIN directors ON directors.id = films.directorid
WHERE directors.co LIKE 'USA';
```
## Show only those films where the writer and the director are the same person
```sql
SELECT films.title, directors.name, writers.name
FROM films
INNER JOIN directors ON directors.id = films.directorid
INNER JOIN writers ON writers.id = films.writerid
WHERE writers.name LIKE directors.name;
```
## Show directors and film titles for films with a score of 8 or higher
```sql
SELECT films.title, directors.name, films.score
FROM films
INNER JOIN directors ON directors.id = films.directorid
WHERE films.score >= 8;
```
## Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
### Lists titles and writer emails for films with a score of 9 or higher.
```sql
SELECT films.title, writers.email
FROM films
INNER JOIN writers ON films.writerid = writers.id
WHERE films.score >= 9;
```` 
### Provides the film titles, writer emails, and director's country.
```sql
SELECT films.title, writers.email, directors.co AS director_country
FROM films
INNER JOIN writers ON films.writerid = writers.id
INNER JOIN directors ON films.directorid = directors.id;
```` 
### Retrieves titles of films where the star's name is "Mark Hamill".
```sql
SELECT films.title
FROM films
INNER JOIN stars ON films.starid = stars.id
WHERE stars.name LIKE '%Mark Hamil%';
```` 
### Finds unique star names appearing in films directed by "James Cameron".
```sql
SELECT DISTINCT stars.name
FROM films
INNER JOIN directors ON films.directorid = directors.id
INNER JOIN stars ON films.starid = stars.id
WHERE directors.name LIKE '%James Cameron%';
```` 
### Displays film titles, director names, and writer emails specifically for "Historical" genre films.
```sql
SELECT films.title, directors.name AS director, writers.email AS writer_contact
FROM films
INNER JOIN directors ON films.directorid = directors.id
INNER JOIN writers ON films.writerid = writers.id
WHERE films.genre LIKE '%Historical%';
```` 

# Extension 1
## Show the title and director name for all films
```sql
SELECT films.title, people.name
FROM films
INNER JOIN people ON films.directorid = people.id;
```
## Show the title, director and star name for all films
```sql
SELECT films.title, dp.name director, sp.name star
FROM films
INNER JOIN people dp ON films.directorid = dp.id
INNER JOIN people sp ON films.starid = sp.id
```
## Show the title of films where the director is from the USA
```sql
SELECT films.title
FROM films
INNER JOIN directors
ON directors.personid = films.directorid
WHERE directors.co LIKE '%USA%';
```
## Show only those films where the writer and the director are the same person
```sql
SELECT films.title
FROM films
WHERE films.writerid = films.directorid;
```
## Show directors and film titles for films with a score of 8 or higher
```sql
SELECT films.title, name, films.score
FROM films
INNER JOIN people
ON people.id = films.directorid
WHERE score >=8;
```
## Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
### Lists titles and writer emails for films with a score of 9 or higher.
```sql
SELECT title, email
FROM films
INNER JOIN writers
ON films.writerid = writers.personid
WHERE films.score >= 9;
```` 
### Provides the film titles, writer emails, and director's country.
```sql
SELECT films.title, writers.email, directors.co AS director_country
FROM films
INNER JOIN writers
ON writers.personid = films.writerid
INNER JOIN directors
ON films.directorid = directors.personid;
```` 
### Retrieves titles of films where the star's name is "Mark Hamill".
```sql
SELECT films.title, p.name
FROM films
INNER JOIN people p
ON p.id = films.starid
WHERE p.name LIKE '%Mark Hamill%';
```` 
### Finds unique star names appearing in films directed by "James Cameron".
```sql
SELECT DISTINCT sp.name
FROM films
INNER JOIN people sp
ON sp.id = films.starid
INNER JOIN people dp
ON dp.id = films.directorid
WHERE dp.name LIKE '%James Cameron%';
```` 
### Displays film titles, director names, and writer emails specifically for "Historical" genre films.
```sql
SELECT title, dp.name director, wp.email writer_contact
FROM films
INNER JOIN people dp
ON dp.id = films.directorid
INNER JOIN writers wp
ON wp.personid = films.writerid
WHERE films.genre LIKE '%Historical%';
```` 
# Extension 2