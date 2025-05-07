create table directors (
	id serial primary key,
	people_fk integer not null,
	country varchar(50) not null,
	unique(id)
);