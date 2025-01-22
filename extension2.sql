-- Select att the entries in the filmcast tabel and join it with Film, person and thier role
select f.title, pr."name", r."role"
from filmcast fc
left join films f on fc.filmid = f.id
left join person pr on fc.personid = pr.id
left join role r on fc.roleid = r.id
