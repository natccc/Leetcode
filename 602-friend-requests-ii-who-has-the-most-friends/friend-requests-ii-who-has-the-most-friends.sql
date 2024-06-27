# Write your MySQL query statement below
WITH combined AS
(SELECT requester_id AS id FROM RequestAccepted 
UNION ALL
SELECT accepter_id AS id FROM RequestAccepted
),
id_count AS(
SELECT id, COUNT(id) AS num
FROM combined
GROUP BY id)

SELECT * from id_count
WHERE num IN(
    SELECT MAX(num)
    FROM id_count
)



