create table stars (
	id serial primary key,
	name varchar(50) not null,
	birthDate date not null,
	unique(id, name)
);