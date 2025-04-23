CREATE TABLE band_members(
id serial PRIMARY KEY,
name varchar(255),
instrument varchar(100),
band_fk_id int);


SELECT * FROM band_members;

SELECT * FROM band_members bm LEFT JOIN bands b ON bm.band_fk_id = b.id;

SELECT * FROM band_members bm INNER JOIN bands b ON bm.band_fk_id = b.id;

SELECT * FROM band_members bm LEFT JOIN bands b ON bm.band_fk_id = b.id
ORDER BY b.name ASC;

DROP TABLE members;

CREATE TABLE band_members(
id serial PRIMARY KEY,
name varchar(255),
instrument varchar(100));

CREATE TABLE bands_band_members(
id serial PRIMARY KEY,
bands_id INTEGER,
band_members_id INTEGER);


SELECT bm.name, bm.instrument, b.name FROM band_members bm
INNER JOIN bands_band_members bbm ON bm.id = bbm.band_members_id
INNER JOIN bands b ON bbm.bands_id = b.id;