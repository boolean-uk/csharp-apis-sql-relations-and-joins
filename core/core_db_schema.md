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


#### Director


| ID  | Director               | Director Country |
| --- | ---------------------- | ---------------- |
| 1   | Stanley Kubrick        | USA              |
| 2   | George Lucas           | USA              |
| 3   | Robert Mulligan        | USA              |
| 4   | James Cameron          | Canada           |
| 5   | David Lean             | UK               |
| 6   | Anthony Mann           | USA              |
| 7   | Theodoros Angelopoulos | Greece           |
| 8   | Paul Verhoeven         | Netherlands      |
| 9   | Krzysztof Kieslowski   | Poland           |
| 10  | Jean-Paul Rappeneau    | France           |

#### Star 

| ID  | Star              | Star DOB   |
| --- | ----------------- | ---------- |
| 1   | Keir Dullea       | 30/05/1936 |
| 2   | Mark Hamill       | 25/09/1951 |
| 3   | Gregory Peck      | 05/04/1916 |
| 4   | Leonardo DiCaprio | 11/11/1974 |
| 5   | Julie Christie    | 14/04/1940 |
| 6   | Charlton Heston   | 04/10/1923 |
| 7   | Manos Katrakis    | 14/08/1908 |
| 8   | Rutger Hauer      | 23/01/1944 |
| 9   | Juliette Binoche  | 09/03/1964 |
| 10  | Gerard Depardieu  | 27/12/1948 |

#### Writer 

| ID  | Writer                   | Writer Email          |
| --- | ------------------------ | --------------------- |
| 1   | Arthur C Clarke          | arthur@clarke.com     |
| 2   | George Lucas             | george@email.com      |
| 3   | Harper Lee               | harper@lee.com        |
| 4   | James Cameron            | james@cameron.com     |
| 5   | Boris Pasternak          | boris@boris.com       |
| 6   | Frederick Frank          | fred@frank.com        |
| 7   | Theodoros Angelopoulos   | theo@angelopoulos.com |
| 8   | Erik Hazelhoff Roelfzema | erik@roelfzema.com    |
| 9   | Krzysztof Kieslowsk      | email@email.com       |
| 10  | Edmond Rostand           | edmond@rostand.com    |



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


CREATE TABLE writers(
id SERIAL PRIMARY KEY,
writer VARCHAR(50) UNIQUE NOT NULL,
writer_email VARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE stars(
id SERIAL PRIMARY KEY,
star VARCHAR(50) UNIQUE NOT NULL,
dob DATE NOT NULL
); 


CREATE TABLE directors(
id SERIAL PRIMARY KEY,
director VARCHAR(50) UNIQUE NOT NULL,
country VARCHAR(50) NOT NULL
);