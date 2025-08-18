## create the tables

``` SQL
CREATE TABLE People(
  id serial primary key, 
  name VARCHAR(100) NOT NULL, 
  email INT,
  date_of_birth date,
  country VARCHAR(100)
);


CREATE TABLE movie (
  id serial PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  director_fk int NOT NULL,
  star_fk int NOT NULL,
  writer_fk int NOT NULL,
  release_year date NOT NULL,
  genre VARCHAR(100) NOT NULL,
  score int NOT NULL
);
CREATE TABLE country(
  id serial PRIMARY KEY, 
  country VARCHAR(100) NOT NULL
);
```
## inserting into tables
```

INSERT INTO country (country) values ('USA');
INSERT INTO country (country) values ('Canada');
INSERT INTO country (country) values ('UK');
INSERT INTO country (country) values ('Greece');
INSERT INTO country (country) values ('Netherlands');
INSERT INTO country (country) values ('Poland');
INSERT INTO country (country) values ('France');


INSERT INTO people (name, email, date_of_birth, country) VALUES ('Stanley Kubrik', null, null, 1);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Keir Dullea', null, '1936-05-30', null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Arthur C Clarke', 'arthur@clarke.com', null, null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('George Lucas', 'george@email.com', null, 1);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Mark Hamill', null, '1951-09-25', null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Robert Mulligan', null, null, 1);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Gregory Peck', null, '1916-04-05', null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Harper Lee', 'harper@lee.com', null, null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('James Cameron', 'james@cameron.com', null, 2);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Leonardo DiCaprio', null, '1974-11-11', null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('David Lean', null, null, 3);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Julie Christie', null, '1940-04-14', null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Boris Pasternak', 'boris@boris.com', null, null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Anthony Mann', null, null, 1);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Charlton Heston', null, '1923-10-04', null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Frederick Frank', 'Frederick Frank', null, null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Theodoros Angelopoulos', 'theo@angelopoulos.com', null, 4);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Manos Katrakis', null, '1908-08-04', null);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Paul Verhoeven', null, null, 5);
INSERT INTO people (name, email, date_of_birth, country) VALUES ('Rutger Hauer', null, '1944-01-23', null);
INSERT INTO People (name, email, date_of_birth, country) VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com', null, null);
INSERT INTO People (name, email, date_of_birth, country) VALUES ('Krzysztof Kieslowski', 'email@email.com', null, 6);
INSERT INTO People (name, email, date_of_birth, country) VALUES ('Juliette Binoche', null, '1964-03-09', null);
INSERT INTO People (name, email, date_of_birth, country) VALUES ('Jean-Paul Rappeneau', null, null, 7);
INSERT INTO People (name, email, date_of_birth, country) VALUES ('Gerard Depardieu', null, '1948-12-27', null);
INSERT INTO People (name, email, date_of_birth, country) VALUES ('Edmond Rostand', 'edmond@rostand.com', null, null);



INSERT INTO movie (title, director_fk, star_fk, writer_fk, release_year, genre, score) 
  VALUES ('2001: A Space Odyssey', 1, 2, 3, 1968, 'Science fiction', 10);
INSERT INTO movie (title, director_fk, star_fk, writer_fk, release_year, genre, score)
  VALUES ('Star Wars: A New Hope', 4,5,4,1977,'Science fiction', 7);
INSERT INTO movie (title, director_fk, star_fk, writer_fk, release_year, genre, score)
  VALUES ('To Kill A Mockingbird', 6,7,8,1962,'Drama', 10);
INSERT INTO movie (title, director_fk, star_fk, writer_fk, release_year, genre, score)
  VALUES ('Titanic', 9,10,9,1997,'Romance', 5);
INSERT INTO movie (title, director_fk, star_fk, writer_fk, release_year, genre, score)
  VALUES ('Dr Zhivago', 11,12,13, 1965, 'Historical', 8);
INSERT INTO movie (title, director_fk, star_fk, writer_fk, release_year, genre, score)
  VALUES ('El Cid', 14,15,16,1961,'Historical', 6);
INSERT INTO movie (title, director_fk, star_fk, writer_fk, release_year, genre, score)
  VALUES ('Voyage to Cythera', 17,18,17,1984, 'Drama', 8);

```

## Queries

Show the title and director name for all films

	SELECT m.title, p.name
	FROM movie m
	LEFT JOIN people p ON p.id = m.director_fk

Show the title, director and star name for all films

	SELECT m.title, d.name, s.name
	FROM movie m
	LEFT JOIN people d ON d.id = m.director_fk
	LEFT JOIN people s ON s.id = m.star_fk
Show the title of films where the director is from the USA

	SELECT m.title
	FROM movie m
	LEFT JOIN people p ON m.director_fk = p.id
	WHERE p.country = 1

Show only those films where the writer and the director are the same person

	SELECT m.title
	FROM movie m
	LEFT JOIN people d ON d.id = m.director_fk
	LEFT JOIN people w ON w.id = m.writer_fk
	WHERE d.name = w.name

Show directors and film titles for films with a score of 8 or higher

	SELECT m.title, p.name
	FROM movie m
	LEFT JOIN people p ON p.id = m.director_fk
	WHERE m.score >= 8

show movie title and year for movies newer than 1980

	SELECT m.title, m.release_year
	FROM movie m
	WHERE m.release_year > 1980

show movie title, star name and DOB for films with stars born after 1950

	SELECT m.title , p.name, p.date_of_birth
	FROM movie m
	LEFT JOIN people p ON p.id = m.star_fk
	WHERE p.date_of_birth > '1950-01-01'

show movie title and directorname and origin of director for movies with directors from outside of europe

	SELECT m.title, p.name, c.country
	from movie m
	left join people p on m.director_fk = p.id
	left join country c on p.country = c.id
	where c.country = 'USA' or c.country = 'Canada'




## Extention 2

```
-- CREATE TABLE movie_cast (
--   id serial NOT NULL, 
--   name VARCHAR(100),
--   featured_in_fk int NOT NULL
-- )

-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Chela Matthison', 1);
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Gary Lockwood', 1);
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Daniel Richer', 1);
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Garrick Hagon', 2 );
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Crahan Denton',3);
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Kathy Bates',4 );
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Tom Courtenay',5 );
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Omar Sharif',6 );
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Manos Katrakis',7 );
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Rutger Hauer', 8);
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Juliette Binoche', 9);
-- INSERT INTO movie_cast (name, featured_in_fk) VALUES ('Anne Brochet',10 );

-- INSERT INTO movie_cast (name, featured_in_fk)
--   SELECT people.name, movie.id
--   FROM movie JOIN people
--   ON movie.star_fk = people.id

SELECT m.title, mc.name
from movie m 
left join movie_cast mc on m.id = mc.featured_in_fk
left join people p on m.star_fk = p.id
where m.id = 1 

SELECT m.title, mc.name
from movie m 
left join movie_cast mc on m.id = mc.featured_in_fk
left join people p on m.star_fk = p.id
where m.id in (1,2,3,4)

```