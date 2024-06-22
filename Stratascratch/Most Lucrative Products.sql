/*
You have been asked to find the 5 most lucrative products in terms of total revenue for the first half of 2022 (from January to June inclusive).
Output their IDs and the total revenue */

SELECT product_id, sum(units_sold*cost_in_dollars) as revenue
from online_orders
where date between to_date('01-01-2022','dd-mm-yyyy') and  to_date('30-06-2022','dd-mm-yyyy')
group by product_id
order by revenue desc
limit 5;
