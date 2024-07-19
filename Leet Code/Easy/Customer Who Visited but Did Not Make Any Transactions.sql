/*
Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order
*/
select v.customer_id, count(v.customer_id) as count_no_trans
from Visits v
left join Transactions t on t.visit_id = v.visit_id
where t.transaction_id is null
group by v.customer_id;
