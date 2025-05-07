create table casts (
	id serial primary key,
	film_fk integer not null,
	people_fk integer not null,
	isStar boolean not null,
	unique(id)
);