1 ) -- Show the title of films, director's name, and writer's name where the film score is between 7 and 9:
Select film.title as Filmtitle, director.directorname as Directorname,
writer.writername as Writername, film.score as Filmscore
from film
INNER JOIN director on film.director_id = director.id
INNER JOIN writer on film.writer_id = writer.id
WHERE film.score BETWEEN 7 AND 9;

2 ) -- listing all films with director country USA or netherlands
Select film.title as Filmtitle, director.directorname as Directorname, 
director.directorcountry as DirectorCountry
from film
INNER JOIN director on film.director_id = director.id
WHERE director.directorcountry = 'USA' OR director.directorcountry = 'Netherlands';

3 ) -- listing all films where directorname is not george lucas.
Select film.title as Filmtitle, director.directorname as Directorname
from film
INNER JOIN director on film.director_id = director.id
WHERE director.directorname NOT LIKE 'George Lucas';

4) -- showing total of films each director have directed
Select director.directorname as Directorname, COUNT(film.id) as Totalfilm
from director
INNER JOIN film on director.id = film.director_id
GROUP BY director.directorname;

5) Showing title, director name, and writer name for films that were directed and writed by different writer and director
Select film.title as Filmtitle, director.directorname as Directorname,
writer.writername as Writername
from film
INNER JOIN director on film.director_id = director.id
INNER JOIN writer on film.writer_id = writer.id
WHERE director.directorname NOT LIKE writer.writername




