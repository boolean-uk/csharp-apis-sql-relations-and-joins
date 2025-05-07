CREATE TABLE Director (
  id serial PRIMARY KEY,
  Directorname VARCHAR(100) NOT NULL,
  Directorcountry VARCHAR(100) NOT NULL
);

CREATE TABLE Star (
  id serial PRIMARY KEY,
  Starname varchar(100) NOT NULL,
  DateOfBirth INTEGER NOT NULL
);

CREATE TABLE Writer (
  id serial PRIMARY KEY,
  Writername VARCHAR(100) NOT NULL,
  Email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Film (
  id serial PRIMARY KEY,
  Title varchar (100) NOT NULL,
  Year INTEGER NOT NULL,
  Genre VARCHAR(100) NOT NULL,
  Score INTEGER NOT NULL,
  Director_Id INTEGER NOT NUll,
  Star_Id INTEGER NOT NULL,
  Writer_Id INTEGER NOT NULL,
  FOREIGN KEY(Director_Id) REFERENCES Director(id),
  FOREIGN KEY (Star_Id) REFERENCES Star(id),
  FOREIGN KEY (Writer_Id) REFERENCES Writer(id)
);
