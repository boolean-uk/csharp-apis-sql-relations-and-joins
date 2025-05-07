--Title and Director name
select f.title, d.name as director from films f left join directors d ON f.director_fk = d.id;