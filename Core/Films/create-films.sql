create table films (
	id serial primary key,
	title varchar(50) not null,
	release_year integer not null,
	genre varchar(50) not null,
	score integer not null,
	director_fk integer not null,
	star_fk integer not null,
	writer_fk integer not null,
	unique(id, title)
);