# Write your MySQL query statement below
SELECT name, bonus 
FROM Employee
LEFT JOIN Bonus
USING (empId)
WHERE bonus < 1000 or bonus IS NULL