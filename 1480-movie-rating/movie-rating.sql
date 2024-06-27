# Write your MySQL query statement below
(
    SELECT name AS results
    FROM users
    JOIN movierating USING (user_id)
    GROUP By user_id,name
    ORDER BY count(*) DESC,name
    LIMIT 1
)
UNION ALL
(
    SELECT title AS results
    FROM movies
    JOIN movierating USING (movie_id)
    WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY movie_id,title
    ORDER BY AVG(rating) DESC, title
    LIMIT 1
)



