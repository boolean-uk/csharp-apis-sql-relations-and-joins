
CREATE TABLE directed
(
  personid INT NOT NULL,
  filmid   INT NOT NULL
);

CREATE TABLE film
(
  id       INT          NOT NULL GENERATED ALWAYS AS IDENTITY UNIQUE,
  title    VARCHAR(100) NOT NULL,
  genre    VARCHAR(100) NOT NULL,
  released INTEGER     ,
  score    INTEGER     ,
  PRIMARY KEY (id)
);

CREATE TABLE hasrole
(
  personid INT     NOT NULL,
  roleid   INTEGER NOT NULL
);

CREATE TABLE person
(
  id          INT          NOT NULL GENERATED ALWAYS AS IDENTITY UNIQUE,
  name        VARCHAR(100) NOT NULL,
  role_fk     INTEGER      NOT NULL,
  country     VARCHAR(100),
  dateofbirth DATE        ,
  email       VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE roles
(
  id   INTEGER      NOT NULL GENERATED ALWAYS AS IDENTITY UNIQUE,
  role VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE starredin
(
  personid INT NOT NULL,
  filmid   INT NOT NULL
);

CREATE TABLE wrote
(
  personid INT NOT NULL,
  filmid   INT NOT NULL
);

ALTER TABLE hasrole
  ADD CONSTRAINT FK_person_TO_hasrole
    FOREIGN KEY (personid)
    REFERENCES person (id);

ALTER TABLE hasrole
  ADD CONSTRAINT FK_roles_TO_hasrole
    FOREIGN KEY (roleid)
    REFERENCES roles (id);

ALTER TABLE starredin
  ADD CONSTRAINT FK_person_TO_starredin
    FOREIGN KEY (personid)
    REFERENCES person (id);

ALTER TABLE starredin
  ADD CONSTRAINT FK_film_TO_starredin
    FOREIGN KEY (filmid)
    REFERENCES film (id);

ALTER TABLE directed
  ADD CONSTRAINT FK_person_TO_directed
    FOREIGN KEY (personid)
    REFERENCES person (id);

ALTER TABLE directed
  ADD CONSTRAINT FK_film_TO_directed
    FOREIGN KEY (filmid)
    REFERENCES film (id);

ALTER TABLE wrote
  ADD CONSTRAINT FK_person_TO_wrote
    FOREIGN KEY (personid)
    REFERENCES person (id);

ALTER TABLE wrote
  ADD CONSTRAINT FK_film_TO_wrote
    FOREIGN KEY (filmid)
    REFERENCES film (id);
