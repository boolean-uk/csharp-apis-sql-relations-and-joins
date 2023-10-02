/*
CREATE TABLE people (
id serial primary key,
name varchar (255) not null,
role varchar(255) not null
)
*/

/*
ALTER TABLE stars
ADD COLUMN person_id INT REFERENCES People(id);
*/
/*
ALTER TABLE directors
ADD COLUMN person_id INT REFERENCES People(id);
*/
/*
ALTER TABLE writers
ADD COLUMN person_id INT REFERENCES People(id);
*/
/*
ALTER TABLE people
drop column name;
*/
-- select * FROM directors  

People table 
1	Director
2	Star
3	Writer
4	Director + Star
5	Director + Writer
6	Star + Writer
7	Director + Star + Writer