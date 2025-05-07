create table people (
	id serial primary key,
	name varchar(50) not null,
	unique(id, name)
);