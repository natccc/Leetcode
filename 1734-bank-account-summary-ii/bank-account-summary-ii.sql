# Write your MySQL query statement below
select name, sum(amount) as balance from users
inner join transactions
using(account)
group by account
having balance > 10000