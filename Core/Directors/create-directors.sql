create table directors (
	id serial primary key,
	name varchar(50) not null,
	country varchar(50) not null,
	unique(id, name)
);