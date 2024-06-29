# Write your MySQL query statement below
select DISTINCT email from person p1
where email in (
    select email from person p2
    where p1.email = p2.email and p1.id<>p2.id
)