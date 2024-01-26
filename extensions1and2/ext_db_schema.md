#### Film

| ID  | Title                 | Year | Genre           | Score | DirectorId | StarId | WriterId |
| --- | --------------------- | ---- | --------------- | ----- |------------|--------|----------|
| 1   | 2001: A Space Odyssey | 1968 | Science Fiction | 10    | 1          | 1      | 1        |
| 2   | Star Wars: A New Hope | 1977 | Science Fiction | 7     | 2          | 2      | 2        |
| 3   | To Kill A Mockingbird | 1962 | Drama           | 10    | 3          | 3      | 3        |
| 4   | Titanic               | 1997 | Romance         | 5     | 4          | 4      | 4        |
| 5   | Dr Zhivago            | 1965 | Historical      | 8     | 5          | 5      | 5        |
| 6   | El Cid                | 1961 | Historical      | 6     | 6          | 6      | 6        |
| 7   | Voyage to Cythera     | 1984 | Drama           | 8     | 7          | 7      | 7        |
| 8   | Soldier of Orange     | 1977 | Thriller        | 8     | 8          | 8      | 8        |
| 9   | Three Colours: Blue   | 1993 | Drama           | 8     | 9          | 9      | 9        |
| 10  | Cyrano de Bergerac    | 1990 | Historical      | 9     | 10         | 10     | 10       |


#### People


| ID  | Person                   |
| --- | ------------------------ |
| 1   | Stanley Kubrick          |
| 2   | George Lucas             |
| 3   | Robert Mulligan          |
| 4   | James Cameron            |
| 5   | David Lean               |
| 6   | Anthony Mann             |
| 7   | Theodoros Angelopoulos   |
| 8   | Paul Verhoeven           |
| 9   | Krzysztof Kieslowski     |
| 10  | Jean-Paul Rappeneau      |
| 11  | Keir Dullea              |
| 12  | Mark Hamill              |
| 13  | Gregory Peck             |
| 14  | Leonardo DiCaprio        |
| 15  | Julie Christie           |
| 16  | Charlton Heston          |
| 17  | Manos Katrakis           |
| 18  | Rutger Hauer             |
| 19  | Juliette Binoche         |
| 20  | Gerard Depardieu         |
| 21  | Arthur C Clarke          |
| 22  | Harper Lee               |
| 23  | Boris Pasternak          |
| 24  | Frederick Frank          |
| 25  | Erik Hazelhoff Roelfzema |
| 26  | Edmond Rostand           |


#### Cast


| ID  | Name            | FilmID | PersonId |
| --- | --------------- | ------ |----------|
| 1   | Mary Smith      | 1      | 11       |
| 2   | Kyle Green      | 9      | 19       |
| 3   | Jane Rodge      | 3      | 13       |
| 4   | Gary Simms      | 5      | 15       |



#### Director


| ID  | PersonID               | Director Country |
| --- | ---------------------- | ---------------- |
| 1   | 1                      | USA              |
| 2   | 2                      | USA              |
| 3   | 3                      | USA              |
| 4   | 4                      | Canada           |
| 5   | 5                      | UK               |
| 6   | 6                      | USA              |
| 7   | 7                      | Greece           |
| 8   | 8                      | Netherlands      |
| 9   | 9                      | Poland           |
| 10  | 10                     | France           |

#### Star 

| ID  | PersonID          | Star DOB   |
| --- | ----------------- | ---------- |
| 1   | 11                | 30/05/1936 |
| 2   | 12                | 25/09/1951 |
| 3   | 13                | 05/04/1916 |
| 4   | 14                | 11/11/1974 |
| 5   | 15                | 14/04/1940 |
| 6   | 16                | 04/10/1923 |
| 7   | 17                | 14/08/1908 |
| 8   | 18                | 23/01/1944 |
| 9   | 19                | 09/03/1964 |
| 10  | 20                | 27/12/1948 |

#### Writer 

| ID  | PersonId                 | Writer Email          |
| --- | ------------------------ | --------------------- |
| 1   | 21                       | arthur@clarke.com     |
| 2   | 2                        | george@email.com      |
| 3   | 22                       | harper@lee.com        |
| 4   | 4                        | james@cameron.com     |
| 5   | 23                       | boris@boris.com       |
| 6   | 24                       | fred@frank.com        |
| 7   | 7                        | theo@angelopoulos.com |
| 8   | 25                       | erik@roelfzema.com    |
| 9   | 9                        | email@email.com       |
| 10  | 26                       | edmond@rostand.com    |



#### CREATE TABLE 


CREATE TABLE films(
id SERIAL PRIMARY KEY,
title VARCHAR(50) UNIQUE NOT NULL,
year INT NOT NULL,
genre VARCHAR(50) NOT NULL,
score INT NOT NULL CHECK (score > 0 AND score < 11),
director_id INT REFERENCES directors(id),
star_id INT REFERENCES stars(id),
writer_id INT REFERENCES writers(id)
); 

CREATE TABLE people(
id SERIAL PRIMARY KEY,
person VARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE writers(
id SERIAL PRIMARY KEY,
person_id INT REFERENCES people(id),
writer_email VARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE stars(
id SERIAL PRIMARY KEY,
person_id INT REFERENCES people(id),
dob DATE NOT NULL
); 


CREATE TABLE directors(
id SERIAL PRIMARY KEY,
person_id INT REFERENCES people(id),
country VARCHAR(50) NOT NULL
);