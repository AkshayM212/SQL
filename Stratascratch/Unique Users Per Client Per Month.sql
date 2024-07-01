/*
Write a query that returns the number of unique users per client per month


*/
select client_id, to_char(time_id,'MM') as month, count(distinct user_id) as users_num
from fact_events
group by client_id, to_char(time_id,'MM') 
order by client_id
