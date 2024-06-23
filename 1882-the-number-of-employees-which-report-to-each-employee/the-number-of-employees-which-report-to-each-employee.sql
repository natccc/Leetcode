# Write your MySQL query statement below
SELECT emp1.employee_id, emp1.name, COUNT(*) AS reports_count, ROUND(AVG(emp2.age)) AS average_age
FROM employees emp1
JOIN employees emp2
ON emp1.employee_id = emp2.reports_to
GROUP BY emp1.employee_id
ORDER BY emp1.employee_id