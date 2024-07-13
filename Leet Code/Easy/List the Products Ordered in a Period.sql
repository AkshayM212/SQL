/*
Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.

Return the result table in any order
*/
select p.product_name, sum(unit) as unit
from Orders o
join Products p on p.product_id = o.product_id
where order_date between to_date('01-02-2020','dd-mm-yyyy') and to_date('29-02-2020','dd-mm-yyyy') 
group by  p.product_name
having sum(unit) >= 100
order by unit desc;
