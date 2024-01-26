INSERT INTO scores(score) 
VALUES
		(10),
    (9),
    (8),
    (7),
    (6),
    (5);

INSERT INTO release_years(release_year) 
VALUES 
		(1968),
    (1977),
    (1962),
    (1997),
    (1965),
    (1961),
    (1984),
    (1993),
    (1990);

INSERT INTO genres(genre) 
VALUES
		('science fiction'),
		('drama'),
		('romance'),
		('historical'),
		('thriller');

INSERT INTO star_dobs (birthdate)
VALUES
    ('1936-05-30'),
    ('1951-09-25'),
    ('1916-04-05'),
    ('1974-11-11'),
    ('1940-04-14'),
    ('1923-10-04'),
    ('1908-08-14'),
    ('1944-01-23'),
    ('1964-03-09'),
    ('1948-12-27');
    
INSERT INTO stars (full_name, dob_id)
VALUES
    ('Keir Dullea',1),
    ('Mark Hamill',2),
    ('Gregory Peck',3),
    ('Leonardo DiCaprio',4),
    ('Julie Christie',5),
    ('Charlton Heston',6),
    ('Manos Katrakis',7),
    ('Rutger Hauer',8),
    ('Juliette Binoche',9),
    ('Gerard Depardieu',10);

INSERT INTO countries (country)
VALUES
    ('USA'),
    ('Canada'),
    ('UK'),
    ('Greece'),
    ('Netherlands'),
    ('Poland'),
    ('France');

INSERT INTO directors (full_name, country_id)
VALUES
    ('Stanley Kubrick', 1),
    ('George Lucas', 1),
    ('Robert Mulligan', 1),
    ('James Cameron', 1),
    ('David Lean', 2),
    ('Anthony Mann', 3),
    ('Theodoros Angelopoulos', 1),
    ('Paul Verhoeven', 4),
    ('Krzysztof Kieslowski' , 5),
    ('Jean-Paul Rappeneau', 6);

INSERT INTO writers (full_name, email)
VALUES
    ('Arthur C Clarke', 'arthur@clarke.com'),
    ('George Lucas', 'george@email.com'),
    ('Harper Lee', 'harper@lee.com'),
    ('James Cameron', 'james@cameron.com'),
    ('Boris Pasternak', 'boris@boris.com'),
    ('Frederick Frank', 'fred@frank.com'),
    ('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
    ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
    ('Krzysztof Kieslowski', 'email@email.com'),
    ('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO films (title, director_id, star_id, writer_id, year_id, genre_id, score_id)
VALUES
    ('2001: A Space Odyssey', 1,1,1,1,1,1),
    ('Star Wars: A New Hope', 2,2,2,2,1,4),
    ('To Kill A Mockingbird', 3,3,3,3,2,1),
    ('Titanic', 4, 4, 4, 4, 3, 6),
    ('Dr Zhivago', 5, 5, 5, 5, 4, 3),
    ('El Cid',6,6,6,6,4,5),
    ('Voyage to Cythera',7,7,7,7,2,3),
    ('Soldier of Orange',8,7,7,7,2,3),
    ('Three Colours: Blue',9,9,9,8,2,3),
    ('Cyrano de Bergerac',10,10,10,9,4,2);








