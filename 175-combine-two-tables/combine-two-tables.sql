# Write your MySQL query statement below
select lastName, firstName, city, state
from person 
left join address
using (personId)