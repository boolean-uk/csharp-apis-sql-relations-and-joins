SELECT
    p.name AS actor_name,
    COUNT(DISTINCT c.movie_id) AS movie_count,
    CASE
        WHEN COUNT(DISTINCT c.movie_id) > 0
            THEN SUM(m.score) / COUNT(DISTINCT c.movie_id)
        ELSE 0
    END AS average_movie_score,
    MAX(m.title) AS highest_rated_movie
FROM
    people p
JOIN
    actors a ON p.id = a.people_id
JOIN
    casts c ON a.id = c.actors_id
LEFT JOIN
    movies_stars ms ON c.movie_id = ms.movie_id AND a.id = ms.actors_id
LEFT JOIN
    movies m ON c.movie_id = m.id
GROUP BY
    a.id, actor_name
ORDER BY
    average_movie_score DESC;