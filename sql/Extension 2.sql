CREATE TABLE Actor
(
id SERIAL,
name VARCHAR(30),
description VARCHAR(255),
age INT,
height FLOAT,
PRIMARY KEY(id)
);

CREATE TABLE _cast
(
filmID INT,
actorID INT[],
PRIMARY KEY(filmID)
);


INSERT INTO Actor (name, description, age, height) VALUES
('John Doe', 'A talented actor known for his versatile roles in drama and action films.', 34, 5.9),
('Jane Smith', 'An award-winning actress famous for her performances in romantic comedies.', 29, 5.6),
('Michael Johnson', 'A seasoned actor with a long career in both TV and film, specializing in action roles.', 45, 6.1),
('Emily Clark', 'A rising star with roles in both indie films and blockbusters, known for her dramatic range.', 26, 5.7),
('Chris Brown', 'Famous for his comedic roles and captivating screen presence, Chris has been a fan favorite for years.', 38, 5.10),
('Sarah Williams', 'Known for her performances in historical dramas, Sarah is a versatile actress with a diverse portfolio.', 32, 5.5),
('Daniel Lee', 'A popular actor in action films, Daniel is often cast in leading roles due to his intense performances.', 40, 6.0);


INSERT INTO _cast (filmID, actorID) VALUES
(1, ARRAY[1, 2, 3]),
(2, ARRAY[4, 5, 6]),
(3, ARRAY[1, 6, 7]),
(4, ARRAY[2, 3, 4]),
(5, ARRAY[3, 5, 7]),
(6, ARRAY[1, 2, 5]),
(7, ARRAY[4, 6, 7]),
(8, ARRAY[2, 3, 6]),
(9, ARRAY[1, 4, 7]),
(10, ARRAY[3, 5, 6]);
