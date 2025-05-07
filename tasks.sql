-------------------------------------------------------------
Task 1:

create table film(
	id serial,
	director_fk INTEGER,
	star_fk INTEGER,
	writer_fk INTEGER,
	title VARCHAR (100),
	release_year INTEGER,
	genre varchar (100),
	score INTEGER,
	PRIMARY key (id),
	FOREIGN key (director_fk) REFERENCES director(id),
	FOREIGN KEY (star_fk) REFERENCES star(id),
	FOREIGN KEY (writer_fk) REFERENCES writer(id)
);

-------------------------------------------------------------

--insertion of data: 

INSERT INTO director (name, country) VALUES
  ('Stanley Kubrick', 'USA'),
  ('George Lucas', 'USA'),
  ('Robert Mulligan', 'USA'),
  ('James Cameron', 'Canada'),
  ('David Lean', 'UK'),
  ('Anthony Mann', 'USA'),
  ('Theodoros Angelopoulos', 'Greece'),
  ('Paul Verhoeven', 'Netherlands'),
  ('Krzysztof Kieslowski', 'Poland'),
  ('Jean-Paul Rappeneau', 'France');

  INSERT INTO star (name, dob) VALUES
  ('Keir Dullea', '1936-05-30'),
  ('Mark Hamill', '1951-09-25'),
  ('Gregory Peck', '1916-04-05'),
  ('Leonardo DiCaprio', '1974-11-11'),
  ('Julie Christie', '1940-04-14'),
  ('Charlton Heston', '1923-10-04'),
  ('Manos Katrakis', '1908-08-14'),
  ('Rutger Hauer', '1944-01-23'),
  ('Juliette Binoche', '1964-03-09'),
  ('Gerard Depardieu', '1948-12-27');

  INSERT INTO writer (name, email) VALUES
  ('Arthur C Clarke', 'arthur@clarke.com'),
  ('George Lucas', 'george@email.com'),
  ('Harper Lee', 'harper@lee.com'),
  ('James Cameron', 'james@cameron.com'),
  ('Boris Pasternak', 'boris@boris.com'),
  ('Frederick Frank', 'fred@frank.com'),
  ('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
  ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
  ('Krzysztof Kieslowski', 'email@email.com'),
  ('Edmond Rostand', 'edmond@rostand.com');

  INSERT INTO film (title, director_fk, writer_fk, star_fk, release_year, score, genre) VALUES
  ('2001: A Space Odyssey', 1, 1, 1, 1968, 10, 'Science Fiction'),
  ('Star Wars: A New Hope', 2, 2, 2, 1977, 7, 'Science Fiction'),
  ('To Kill A Mockingbird', 3, 3, 3, 1962, 10, 'Drama'),
  ('Titanic', 4, 4, 4, 1997, 5, 'Romance'),
  ('Dr Zhivago', 5, 5, 5, 1965, 8, 'Historical'),
  ('El Cid', 6, 6, 6, 1961, 6, 'Historical'),
  ('Voyage to Cythera', 7, 7, 7, 1984, 8, 'Drama'),
  ('Soldier of Orange', 8, 8, 8, 1977, 8, 'Thriller'),
  ('Three Colours: Blue', 9, 9, 9, 1993, 8, 'Drama'),
  ('Cyrano de Bergerac', 10, 10, 10, 1990, 9, 'Historical');

-------------------------------------------------------------
--1)

select film.title, director.name from film
inner join director on film.director_fk = director.id;

--2)
select film.title, director.name as director_name, star.name as star_name from film
inner join director on film.director_fk = director.id
inner join star on film.star_fk = star.id;

--3)
select film.title from film
inner join director on film.director_fk = director.id
where director.country = 'USA';

--4)
select film.title from film
inner join director on film.director_fk = director.id
inner join writer on film.writer_fk = writer.id
where director.name = writer.name;

--5)
select film.title, director from film
inner join director on film.director_fk = director.id
where film.score >= 8;


-- additional join queries: 
--1)
with films as (
	SELECT
		director_fk,
		title,
		score,
		rank() OVER (order by score DESC) as ranking
		from film
)
select
	id,
	name,
	country,
	ranking
from director
join films on films.director_fk = director.id

order by films.ranking;

--2)
select title, director.name from film
left join director on film.director_fk = director.id;

--3)
select title, director.name from film
right join director on film.director_fk = director.id;

--4)
select title, director.name, score from film
left join director on film.director_fk = director.id
where film.score > 7;

--5)
select title, director.name, score from film
left outer join director on film.director_fk = director.id;

-------------------------------------------------------------

create table people(
	id serial,
	name varchar (100),
	email varchar (100),
	country varchar (100),
	dob varchar (40)
);

-------------------------------------------------------------

-- 1)

INSERT INTO people (id, name, email, country, dob)
SELECT id, name, NULL AS email, country, NULL AS dob FROM director
UNION
SELECT id, name, email, NULL AS country, NULL AS dob FROM writer
UNION
SELECT id, name, NULL AS email, NULL AS country, dob FROM star;

-- 2)
-- first the foreign key constraints in the film table needs to be dropped:
alter table film 
drop CONSTRAINT film_director_fk_fkey,
drop CONSTRAINT film_writer_fk_fkey,
drop CONSTRAINT film_star_fk_fkey;

-- The columns, from which we removed the foreign key constraint, needs to reference the correct primary-key in the people-table:

UPDATE film
SET star_fk = people.id
FROM people, star
WHERE
    film.star_fk IS NOT NULL
    AND film.star_fk = star.id
    AND people.name = star.name;

UPDATE film
SET writer_fk = people.id
FROM people, writer
WHERE
    film.writer_fk IS NOT NULL
    AND film.writer_fk = writer.id
    AND people.name = writer.name;

UPDATE film
SET director_fk = people.id
FROM people, director
WHERE
    film.director_fk IS NOT NULL
    AND film.director_fk = director.id
    AND people.name = director.name;



-- EXTENSION 1, TASK 2)

-- 1)
select title, people.name from film
inner join people on people.id = film.director_fk;


-- 2)

select title, p1.name, p2.name as starName from film
inner join people as p1 on p1.id = film.director_fk
inner join people as p2 on p2.id = film.star_fk;

-- 3)

select title as filmTitle from film
inner join people as p1 on p1.id = film.director_fk
where p1.country = 'USA';

-- 4)
select title as filmTitle, p2.name from film
inner join people as p1 on p1.id = film.director_fk
inner join people as p2 on p2.id = film.writer_fk
where p1.name = p2.name;

-- 5)
select title as filmTitle, p1.name as director_name, score as filmScore from film
inner join people as p1 on p1.id = film.director_fk
where score >= 8;



-- EXTENSION 2

-- Adding actors into the casts table along with their respective movie. 
insert into casts (fk_film, fk_person)
select film.id, p.id from film
inner join people as p on film.star_fk = p.id;