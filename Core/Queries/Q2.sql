--Title, director and star names
select f.title, d.name as director, s.name as star from films f left join directors d ON f.director_fk = d.id left join stars s ON f.star_fk = s.id;