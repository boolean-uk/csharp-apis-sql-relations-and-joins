--Title of film where director is from USA
select f.title from films f left join directors d ON f.director_fk = d.id where d.country LIKE '%USA%';