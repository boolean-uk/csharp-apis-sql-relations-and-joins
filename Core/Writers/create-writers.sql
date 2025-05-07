create table writers (
	id serial primary key,
	name varchar(50) not null,
	email varchar(50) not null,
	unique(id, name, email)
);