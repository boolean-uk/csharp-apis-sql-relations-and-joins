-- 1
select films.title, people.theName
from directors
inner join films
on directors.id = films.director_fk
inner join people
on people.id = directors.people_fk;

--2
select films.title, pDirector.theName as directorName, pStar.thename as starName
FROM films
inner join stars on films.star_fk = stars.id
inner join people pStar on stars.people_fk = pStar.id
inner join directors on films.director_fk = directors.id
inner join people pDirector on directors.people_fk = pDirector.id;


--3
select films.title
from films
inner join directors 
on directors.id = films.director_fk
where directors.country = 'USA';


--4
select films.title
from films
inner join directors on directors.id = films.director_fk
inner join writers on writers.id = films.writer_fk
where writers.people_fk = directors.people_fk;


--5
select people.thename, films.title
from films
inner join directors 
on directors.id = films.director_fk
inner join people on directors.people_fk = people.id
where films.score >= 8;

--my own 5:

-- 6
select people.thename, films.title, films.release_year
from films
inner join writers 
on writers.id = films.writer_fk
inner join people on people.id = writers.people_fk
where films.release_year >= 1970;

--7
select writers.email, films.title
from films
inner join writers 
on writers.id = films.writer_fk
inner join directors
on directors.id = films.director_fk
where directors.country != 'USA';

--8
select films.title
from films
inner join stars 
on stars.id = films.star_fk
where stars.dateOfBirth < date('01-01-1920');

--9
select people.theName, films.title
from films
inner join writers 
on writers.id = films.writer_fk
inner join directors
on directors.id = films.director_fk
inner join people on people.id = writers.people_fk
where lower(substring(writers.email, 1, 1)) = lower(substring(people.thename, 1, 1));


--10
select films.title
from films
inner join stars 
on stars.id = films.star_fk
where stars.dateOfBirth > date('01-01-1920')
and films.release_year > 1970;