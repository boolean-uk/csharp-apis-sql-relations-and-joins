Select film.title as Filmtitle, director.directorname as Directorname, writer.writername as Writername
from film
INNER JOIN director ON film.director_id = director.id
INNER JOIN writer ON film.writer_id = writer.id
WHERE director.directorname = writer.writername;

-- there is a typo on Krzysztof Kieslowski so he is not in the output. but the output shows the other 3 same names.
