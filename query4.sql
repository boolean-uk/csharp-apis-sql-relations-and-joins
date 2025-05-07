-- Show only those films where the writer and the director are the same person
SELECT f.title, d.name, w.name FROM films f LEFT JOIN directors d ON f.id = d.id LEFT JOIN writers w ON f.id = w.id WHERE d.name = w.name
