# Write your MySQL query statement below
WITH cte as(
    SELECT department.name AS Department,
    employee.name AS Employee,
    salary AS Salary,
    DENSE_RANK() over(PARTITION BY departmentId ORDER BY salary DESC) AS dept_rank
    FROM employee
    JOIN department ON employee.departmentId=department.id
    )
SELECT Department, Employee, Salary
FROM cte
WHERE dept_rank<=3

