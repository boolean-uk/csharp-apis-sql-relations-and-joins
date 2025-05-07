--find the average rating for the differents genres
SELECT genre, avg(rating) AS average_rating
FROM films
GROUP BY genre