# Write your MySQL query statement below
select product_id, product_name from product
inner join sales
using (product_id)
group by product_id
having min(sale_date)>= "2019-01-01" and max(sale_date) <= "2019-03-31"




