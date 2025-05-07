-- Show directors and film titles for films with a score of 8 or higher
SELECT d.name, f.title FROM films f LEFT JOIN directors d ON f.id = d.id WHERE f.score >= 8
