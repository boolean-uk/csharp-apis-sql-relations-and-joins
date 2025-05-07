--Show directors and film titles for films with a score of 8 or higher
select d.name as directors, f.title from films f left join directors d ON f.director_fk = d.id where f.score >= 8;