


CREATE TABLE Directors (
    director_id SERIAL PRIMARY KEY,
    director_name VARCHAR(255) NOT NULL,
    director_country VARCHAR(255)
);

CREATE TABLE Stars (
    star_id SERIAL PRIMARY KEY,
    star_name VARCHAR(255) NOT NULL,
    star_dob DATE
);

CREATE TABLE Writers (
    writer_id SERIAL PRIMARY KEY,
    writer_name VARCHAR(255) NOT NULL,
    writer_email VARCHAR(255)
);

CREATE TABLE Films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    director_id INT,
    star_id INT,
    writer_id INT,
    year INT,
    genre VARCHAR(255),
    score INT,
    FOREIGN KEY (director_id) REFERENCES Directors(director_id),
    FOREIGN KEY (star_id) REFERENCES Stars(star_id),
    FOREIGN KEY (writer_id) REFERENCES Writers(writer_id)
)



INSERT INTO Directors (director_name, director_country) VALUES
    ('Stanley Kubrick', 'USA'),
    ('George Lucas', 'USA'),
    ('Robert Mulligan', 'USA'),
    ('James Cameron', 'Canada'),
    ('David Lean', 'UK'),
    ('Anthony Mann', 'USA'),
    ('Theodoros Angelopoulos', 'Greece'),
    ('Paul Verhoeven', 'Netherlands'),
    ('Krzysztof Kieslowski', 'Poland'),
    ('Jean-Paul Rappeneau', 'France')
    
  
INSERT INTO Stars (star_name, star_dob) VALUES
    ('Keir Dullea', '1936-05-30'),
    ('Mark Hamill', '1951-09-25'),
    ('Gregory Peck', '1916-04-05'),
    ('Leonardo DiCaprio', '1974-11-11'),
    ('Julie Christie', '1940-04-14'),
    ('Charlton Heston', '1923-10-04'),
    ('Manos Katrakis', '1908-08-14'),
    ('Rutger Hauer', '1944-01-23'),
    ('Juliette Binoche', '1964-03-09'),
    ('Gerard Depardieu', '1948-12-27')
    
     
INSERT INTO writers (writer_name, writer_email) VALUES
    ('Arthur C Clarke', 'arthur@clarke.com'),
    ('George Lucas', 'george@email.com'),
    ('Harper Lee', 'harper@lee.com'),
    ('James Cameron', 'james@cameron.com'),
    ('Boris Pasternak', 'boris@boris.com'),
    ('Frederick Frank', 'fred@frank.com'),
    ('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
    ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
    ('Krzysztof Kieslowski', 'email@email.com'),
    ('Edmond Rostand', 'edmond@rostand.com')

INSERT INTO Films (title, director_id, star_id, writer_id, year, genre, score) VALUES
    ('2001: A Space Odyssey', 1, 1, 1, 1968, 'Science Fiction', 10),
    ('Star Wars: A New Hope', 2, 2, 2, 1977, 'Science Fiction', 7),
    ('To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
    ('Titanic', 4, 4, 4, 1997, 'Romance', 5),
    ('Dr. Zhivago', 5, 5, 5, 1965, 'Historical', 8),
    ('El Cid', 6, 6, 6, 1961, 'Historical', 6),
    ('Voyage to Cythera', 7, 7, 7, 1984, 'Drama', 8),
    ('Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
    ('Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
    ('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9)
