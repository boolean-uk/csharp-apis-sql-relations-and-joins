--Title and Director name
select f.title, pd.name as director from films f left join directors d ON f.director_fk = d.id left join people pd ON d.people_fk = pd.id;