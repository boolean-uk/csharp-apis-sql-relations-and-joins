-- Could maybe have an actors table aswell, but currently it would only hold a people_id, and it would prevent directors to act in their own movies unless we also add them as actors, wich might not really be a problem
CREATE  TABLE moviecast(
    id serial PRIMARY KEY,
    people_id INT NOT NULL REFERENCES people,
    film_id INT NOT NULL REFERENCES films
);

-- Just some random sample data
INSERT INTO moviecast(people_id, film_id) VALUES(3,2);
INSERT INTO moviecast(people_id, film_id) VALUES(1,4);
INSERT INTO moviecast(people_id, film_id) VALUES(7,6);
INSERT INTO moviecast(people_id, film_id) VALUES(5,2);
INSERT INTO moviecast(people_id, film_id) VALUES(14,1);
INSERT INTO moviecast(people_id, film_id) VALUES(12,7);
INSERT INTO moviecast(people_id, film_id) VALUES(10,8);
INSERT INTO moviecast(people_id, film_id) VALUES(18,9);
INSERT INTO moviecast(people_id, film_id) VALUES(2,10);
INSERT INTO moviecast(people_id, film_id) VALUES(19,7);
INSERT INTO moviecast(people_id, film_id) VALUES(20,9);