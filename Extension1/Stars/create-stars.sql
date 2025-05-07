create table stars (
	id serial primary key,
	people_fk integer not null,
	birthDate date not null,
	unique(id)
);