# Write your MySQL query statement below
SELECT DISTINCT visited_on,
(SELECT SUM(amount)
FROM customer
WHERE visited_on BETWEEN DATE_sub(c.visited_on, INTERVAL 6 DAY) AND c.visited_on) AS amount,
ROUND(((SELECT SUM(amount)
FROM customer
WHERE visited_on BETWEEN DATE_sub(c.visited_on, INTERVAL 6 DAY) AND c.visited_on
)/7),2) AS average_amount
FROM customer c
WHERE visited_on >=
    (SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY)
    FROM customer
    )