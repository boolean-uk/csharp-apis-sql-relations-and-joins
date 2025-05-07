create table writers (
	id serial primary key,
	people_fk integer not null,
	email varchar(50) not null,
	unique(id, email)
);