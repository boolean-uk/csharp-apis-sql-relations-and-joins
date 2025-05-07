-- Insert data into people table
INSERT INTO people (name) 
VALUES
    ('Arthur C Clarke'), --1
    ('George Lucas'), --2
    ('Harper Lee'), --3
    ('James Cameron'), --4
    ('Boris Pasternak'), --5
    ('Frederick Frank'), --6
    ('Theodoros Angelopoulos'), --7
    ('Erik Hazelhoff Roelfzema'), --8
    ('Krzysztof Kieslowski'), --9
    ('Edmond Rostand'), --10
    ('Keir Dullea'), --11
    ('Mark Hamill'), --12
    ('Gregory Peck'), --13
    ('Leonardo DiCaprio'), --14
    ('Julie Christie'), --15
    ('Charlton Heston'), --16
    ('Manos Katrakis'), --17
    ('Rutger Hauer'), --18
    ('Juliette Binoche'), --19
    ('Gerard Depardieu'), --20
    ('Stanley Kubrick'), --21
    ('Robert Mulligan'), --22
    ('David Lean'), --23
    ('Anthony Mann'), --24
    ('Paul Verhoeven'), --25
    ('Jean-Paul Rappeneau'); --26


INSERT INTO writers (email, person_id)
VALUES
    ('arthur@clarke.com', 1),
    ('george@email.com', 2),
    ('harper@lee.com', 3),
    ('james@cameron.com',4),
    ('boris@boris.com',5),
    ('fred@frank.com',6),
    ('theo@angelopoulos.com',7),
    ('erik@roelfzema.com',8),
    ('email@email.com',9),
    ('edmond@rostand.com',10);

INSERT INTO stars (name, dob, person_id)
VALUES
    ('Keir Dullea', '1936-05-30', 11),
    ('Mark Hamill', '1951-09-25', 12),
    ('Gregory Peck', '1916-04-05', 13),
    ('Leonardo DiCaprio', '1974-11-11', 14),
    ('Julie Christie', '1940-04-14', 15),
    ('Charlton Heston', '1923-04-10',16),
    ('Manos Katrakis', '1908-08-14', 17),
    ('Rutger Hauer', '1944-01-23', 18),
    ('Juliette Binoche', '1964-09-03', 19),
    ('Gerard Depardieu', '1948-12-27', 20);

INSERT INTO directors (country, person_id)
VALUES
    ('USA', 21),
    ('USA', 2),
    ('USA', 22),
    ('Canada', 4),
    ('UK', 23),
    ('USA', 24),
    ('Greece', 7),
    ('Netherlands', 25),
    ('Poland', 9),
    ('France', 26);

INSERT INTO films (title, year, genre, score, writer_id, star_id, director_id)
VALUES
    ('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
    ('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
    ('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
    ('Titanic', 1997, 'Romance', 5, 4, 4, 4),
    ('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
    ('El Cid', 1961, 'Historical', 6, 6, 6, 6),
    ('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
    ('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
    ('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
    ('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);