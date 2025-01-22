# Solution

## Insert queries:

## Person - everyone goes in person
### Directors:

		INSERT INTO person 
			(name, country, role_fk)
		VALUES
			('Stanley Kubrick', 'USA', 1),
			('George Lucas', 'USA', 1),
			('Robert Mulligan', 'USA', 1),
			('James Cameron', 'Canada', 1),
			('David Lean', 'UK', 1),
			('Anthony Mann', 'USA', 1),
			('Theodoros Angelopoulos', 'Greece', 1),
			('Paul Verhoeven', 'Netherlands', 1),
			('Krzysztof Kieslowski', 'Poland', 1),
			('Jean-Paul Rappeneau', 'France', 1)
### Stars:
		INSERT INTO person 
			(name, dateofbirth, role_fk)
		VALUES
			('Keir Dullea', '1936-05-30', 3),
			('Mark Hammil', '1951-09-25', 3),
			('Gregory Peck', '1916-04-05', 3),
			('Leonardo DiCaprio', '1974-11-11', 3),
			('Julie Christie', '1940-04-14', 3),
			('Charlton Heston', '1923-10-04', 3),
			('Manos Katrakis', '1908-08-14', 3),
			('Rutger Hauer', '1944-01-23', 3),
			('Juliette Binoche', '1964-03-09', 3),
			('Gerard Depardieu', '1948-12-27', 3)
### Writers:
		INSERT INTO person
			(name, email, role_fk)
		VALUES
			('Arthur C Clarke', 'arthur@clarke.com', 2),
			('George Lucas', 'george@email.com', 2),
			('Harper Lee', 'harper@lee.com', 2),
			('James Cameron', 'james@cameron.com', 2),
			('Boris Pasternak', 'boris@boris.com', 2),
			('Frederick Frank', 'fred@frank.com', 2),
			('Theodoros Angelopulos', 'theo@angelopoulos.com', 2),
			('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com', 2),
			('Krzystof Kieslowski', 'email@email.com', 2),
			('Edmond Rostand', 'edmond@rostand.com', 2)


### Film:

		INSERT INTO film
			(title, released, genre, score)
		VALUES
			('2001: A Space Oddysey', 1968, 'Science Fiction', 10),
			('Star Wars: A New Hope', 1977, 'Science Fiction', 7),
			('To Kill A Mockingbird', 1962, 'Drama', 10),
			('Titanic', 1997, 'Romance', 5),
			('Dr Zhivago', 1965, 'Historical', 8),
			('El Cid', 1961, 'Historical', 6),
			('Voyage to Cythera', 1984, 'Drama', 8),
			('Soldier of Orange', 1977, 'Thriller', 8),
			('Three Colours: Blue', 1993, 'Drama', 8),
			('Cyrano de Bergerac', 1990, 'Historical', 9)

### directed:

	INSERT INTO directed
	(personid, filmid)
	VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10)

### starredin:

	INSERT INTO starredin
	(personid, filmid)
	VALUES
	(11, 1),
	(12, 2),
	(13, 3),
	(14, 4),
	(15, 5),
	(16, 6),
	(17, 7),
	(18, 8),
	(19, 9),
	(20, 10)

### wrote:

	insert into wrote
	(personid, filmid)
	values
	(21, 1),
	(2, 2),
	(23, 3),
	(4, 4),
	(25, 5),
	(26, 6),
	(27, 7),
	(28, 8),
	(9, 9),
	(30, 10)



## Return queries:
#### Show the title and director name for all films

	select film.title AS title, person."name" AS director
	from film
	inner join directed on film.id = directed.personid
	inner join person on directed.personid = person.id


#### Show the title, director and star name for all films

	SELECT film.title AS title, p1."name" AS director, p2."name" AS star
	FROM film
	inner join directed on film.id = directed.filmid
	inner join starredin on film.id = starredin.filmid
	left join person p1 on directed.personid = p1.id
	left join person p2 on starredin.personid = p2.id

#### Show the title of films where the director is from the USA

	SELECT film.title as title
	from film
	inner join directed on directed.filmid = film.id
	inner join person on directed.personid = person.id
	where person.country = 'USA'

#### Show only those films where the writer and the director are the same person

	select film.title as title
	from film
	inner join directed on directed.filmid = film.id
	inner join wrote on wrote.filmid = film.id
	where wrote.personid = directed.personid

#### Show directors and film titles for films with a score of 8 or higher:

	select person."name" as director, film.title as title
	from film
	inner join directed on directed.filmid = film.id
	inner join person on directed.personid = person.id
	where film.score >= 8

### Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables:

#### 1: The amount of times each genre is represented in the db:

	select count(film.genre) as films, genre
	from film
	group by genre
	order by films desc

#### 2: Films ordered by the date of birth of the star:

	select film.title, person.dateofbirth
	from film
	inner join starredin on starredin.filmid = film.id
	inner join person on person.id = starredin.personid
	order by person.dateofbirth

#### 3: Films and star name ordered by the date of birth of the star:

	select film.title, person.dateofbirth, person."name"
	from film
	inner join starredin on starredin.filmid = film.id
	inner join person on person.id = starredin.personid
	order by person.dateofbirth

### 4: Names of directors and the amount of films they directed

	select person."name" as director, count(directed.personid) as filmsdirected
	from person
	inner join directed on directed.personid = person.id
	group by person."name"

### 5: Directors and their involvements as both directing and writing counted:

	select person."name" as director, (count(directed.personid) + count(wrote.personid)) as involvements
	from person
	inner join directed on directed.personid = person.id
	left join wrote on wrote.personid = person.id
	group by person."name"
	order by involvements desc