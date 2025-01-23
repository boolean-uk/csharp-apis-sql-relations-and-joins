## Person

- int id pk
- string name
- datetime dob
- string email


## Director

- int id pk
- string country
- int personId fk

## Movie

- int id pk
- string title
- int releaseYear
- int score
- int directorId fk
- int star fk
- int writer fk
- int genre fk

## Genre

- int id pk
- string name

## Cast

- int personId fk pk
- int movieId fk pk
