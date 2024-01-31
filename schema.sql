/* Normalise the data shown in the table so that it has multiple tables (Film, Director, Star and Writer) 
with an appropriate Primary Key for each and suitable Foreign Key relationships set up so that 
the data can still be linked together as needed.
*/
CREATE TABLE film(
    id serial primary key,
    title varchar(255),
    director_id integer,
    writer_id integer,
    star_id integer,
    release_year integer,
    genre varchar(255),
    score integer,
    constraint fk_director foreign key(director_id) references director(id),
    constraint fk_writer foreign key(writer_id) references writer(id),
    constraint fk_star foreign key(star_id) references star(id)
);

CREATE TABLE director(
    id serial primary key,
    director_name varchar(255),
    director_country varchar(255)
);

CREATE TABLE star(
    id serial primary key,
    star_name varchar(255),
    star_dob datetime
    );

CREATE TABLE writer(
    id serial primary key,
    writer_name varchar(255),
    writer_email varchar(255)
);

--You are going to create some tables to match the schema, Then populate the tables with the data shown

INSERT INTO director(director_name, director_country) VALUES('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');

INSERT INTO star(star_name, star_dob) VALUES ('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27');

INSERT INTO writer(writer_name, writer_email) VALUES ('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowski', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO film(title, director_id, writer_id, star_id, release_year, genre, score) VALUES ('2001: A Space Odyssey', 1, 1, 1, 1968, 'SciFi', 10),
('Star Wars: A New Hope', 2, 2, 2, 1977, 'SciFi', 7),
('To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
('Titanic', 4, 4, 4, 1997, 'Romance', 5),
('Dr Zhivago', 5, 5, 5, 1965, 'Historical', 8),
('El Cid', 6, 6, 6, 1961, 'Historical', 6),
('Voyage to Cythera', 7, 7, 7, 1985, 'Drama', 8),
('Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
('Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9);