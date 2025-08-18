CREATE TABLE "Cast" (
  movie_fk INTEGER NOT NULL,
  actor_fk INTEGER NOT NULL,
  PRIMARY KEY (movie_fk, actor_fk),
  FOREIGN KEY (movie_fk) REFERENCES Movies(id),
  FOREIGN KEY (actor_fk) REFERENCES People(id)
);

INSERT INTO Roles (name)
VALUES ('actor');


INSERT INTO people (name, dob, email, country_fk)
VALUES  
  ('Kate Winslet',       '1975-08-05', NULL, 3),
  ('Harrison Ford',      '1942-07-13', NULL, 1),
  ('Carrie Fisher',      '1956-09-21', NULL, 1),
  ('Alec Guinness',      '1914-04-2', NULL, 3);

INSERT INTO "Cast" (movie_fk, actor_fk)
VALUES 
  (4, 26), -- Kate winslet in titanic
  (2, 27), -- Harrison Ford in star wars 1977
  (2, 28), -- Carrie Fishe in star wars 1977
  (2, 29), -- Alec Guinness in star wars 1977
  (1,  11), -- keir dullea
  (2,  12), -- mark hamill
  (3,  13), -- gregory peck
  (4,  14), -- leonardo dicaprio
  (5,  15), -- Julie christie
  (6,  16), -- Charlton Heston
  (7,  17), -- Manos Katrakis
  (8,  18), -- Rugter hauer
  (9,  19), -- Jliette binoche
  (10, 20) -- Gerard depardiue
;




