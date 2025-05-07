drop table if exists casts;

create table casts(
id serial PRIMARY KEY,
film_fk int not null,
actor_fk int not null,
isStar bool);

insert into casts(film_fk, actor_fk, isStar) values(1, 4, false);
insert into casts(film_fk, actor_fk, isStar) values(1, 2, false);
insert into casts(film_fk, actor_fk, isStar) values(1, 1, false);
insert into casts(film_fk, actor_fk, isStar) values(1, 5, true);
insert into casts(film_fk, actor_fk, isStar) values(2, 1, false);
insert into casts(film_fk, actor_fk, isStar) values(2, 2, false);
insert into casts(film_fk, actor_fk, isStar) values(2, 3, false);
insert into casts(film_fk, actor_fk, isStar) values(2, 4, true);
insert into casts(film_fk, actor_fk, isStar) values(2, 5, false);
insert into casts(film_fk, actor_fk, isStar) values(2, 8, false);
insert into casts(film_fk, actor_fk, isStar) values(2, 9, false);
insert into casts(film_fk, actor_fk, isStar) values(2, 10, false);