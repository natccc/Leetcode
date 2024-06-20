# Write your MySQL query statement below
SELECT w1.id 
From Weather w1, Weather w2
Where DATEDIFF(w1.recordDate, w2.RecordDate) = 1 
AND
w1.temperature > w2.temperature