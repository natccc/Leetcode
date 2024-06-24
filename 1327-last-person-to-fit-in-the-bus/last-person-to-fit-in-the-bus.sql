-- SELECT 
-- q1.person_name
-- FROM Queue q1 JOIN Queue q2 ON q1.turn >= q2.turn
-- GROUP BY q1.turn
-- HAVING sum(q2.weight)<=1000
-- order by sum(q2.weight) DESC
-- LIMIT 1


SELECT person_name
FROM
(SELECT *, sum(weight) OVER (ORDER BY turn) AS sum_weight FROM queue) t
WHERE sum_weight<=1000
ORDER BY sum_weight DESC
LIMIT 1
