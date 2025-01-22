
CREATE TABLE Director
(
  DirectorID serial PRIMARY KEY,
  Name     VARCHAR NOT NULL,
  Country  VARCHAR NOT NULL
);

CREATE TABLE Film
(
  FilmID serial PRIMARY KEY,
  TitleSTRING NOT NULL,
  Year   INTEGER    NOT NULL,
  GenreSTRING NOT NULL,
  Score  INTEGER    NOT NULL
);

CREATE TABLE FilmDetails
(
  FilmDetailsID serial PRIMARY KEY,
  WriterID      INTEGER NOT NULL,
  FilmID        INTEGER NOT NULL,
  DirectorID    INTEGER NOT NULL,
  StarID        INTEGER NOT NULL
);

CREATE TABLE Star
(
  StarID serial PRIMARY KEY,
  Name VARCHAR NOT NULL,
  DOB    DATE       NOT NULL
);

CREATE TABLE WRITER
(
  WriterID serial PRIMARY KEY,
  Name   VARCHAR NOT NULL,
  Email  VARCHAR NOT NULL
);

ALTER TABLE FilmDetails
  ADD CONSTRAINT FK_WRITER_TO_FilmDetails
    FOREIGN KEY (WriterID)
    REFERENCES WRITER (WriterID);

ALTER TABLE FilmDetails
  ADD CONSTRAINT FK_Film_TO_FilmDetails
    FOREIGN KEY (FilmID)
    REFERENCES Film (FilmID);

ALTER TABLE FilmDetails
  ADD CONSTRAINT FK_Director_TO_FilmDetails
    FOREIGN KEY (DirectorID)
    REFERENCES Director (DirectorID);

ALTER TABLE FilmDetails
  ADD CONSTRAINT FK_Star_TO_FilmDetails
    FOREIGN KEY (StarID)
    REFERENCES Star (StarID);