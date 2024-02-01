-- Add this to extesion 1

-- Create Cast table
-- NB: cast returns error
CREATE TABLE casts (
    id serial primary key,
    filmId int references film(id),
    actorId int references people(id)
);

-- Insert cast members
INSERT INTO casts (filmId, actorId) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9), 
    (10, 10); 
    
SELECT * FROM casts ORDER BY filmId;