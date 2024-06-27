# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM insurance i
WHERE EXISTS(
SELECT 1 FROM insurance
WHERE tiv_2015=i.tiv_2015 AND pid!=i.pid
)
AND NOT EXISTS(
    SELECT 1 FROM insurance
    WHERE lat=i.lat AND lon=i.lon AND pid !=i.pid
)