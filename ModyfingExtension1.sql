CREATE Table Person (
  id serial PRIMARY KEY
);

-- 1 --
ALTER TABLE Star
ADD Person_Id INTEGER;

ALTER TABLE Star
ADD CONSTRAINT fk_person
FOREIGN KEY (Person_Id) REFERENCES Person(id);

-- 2 --
ALTER TABLE Writer
ADD Person_Id INTEGER;

ALTER TABLE Writer
ADD CONSTRAINT fk_person
FOREIGN KEY (Person_Id) REFERENCES Person(id)

-- 3 --
ALTER TABLE Director
ADD Person_Id INTEGER;

ALTER TABLE Director
ADD CONSTRAINT fk_person
FOREIGN KEY (Person_Id) REFERENCES Person(id)
