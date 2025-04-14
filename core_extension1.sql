
 --Extension Task 1

CREATE TABLE Films (
id serial PRIMARY KEY,
Title VARCHAR (255) NOT NULL,
Year INT NOT NULL,
Genre VARCHAR (50) NOT NULL,
Score INT NOT NULL,
Director_FK INT NOT NULL,
Star_FK INT NOT NULL,
Writer_FK INT NOT NULL,
FOREIGN KEY (Director_FK) REFERENCES directors(director_id),
FOREIGN KEY (Star_FK) REFERENCES stars(star_id),
FOREIGN KEY (Writer_FK) REFERENCES writers(writer_id)
)

INSERT INTO Films (title, Director_FK, Star_FK, Writer_FK, year, genre, score) VALUES
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


CREATE TABLE Roles (
id serial PRIMARY KEY,
Role VARCHAR (255) NOT NULL
)


CREATE TABLE People (
id serial PRIMARY KEY,
Role_id INT NOT NULL,
Name VARCHAR (255) NOT NULL,
DOB DATE,
Country VARCHAR (255),
Email VARCHAR (255),
FOREIGN KEY (Role_id) REFERENCES Roles(id)
)


INSERT INTO People (Role_id, Name, DOB, Country, Email)
SELECT 1, director_name, NULL, Director_Country, NULL  FROM directors
UNION SELECT 2, star_name, Star_DOB, NULL, NULL FROM stars
UNION SELECT 3, writer_name, NULL, NULL, Writer_Email FROM writers

