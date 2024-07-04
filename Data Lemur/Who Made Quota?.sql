/*
s a data analyst on the Oracle Sales Operations team, you are given a list of salespeople’s deals, and the annual quota they need to hit.

Write a query that outputs each employee id and whether they hit the quota or not ('yes' or 'no'). Order the results by employee id in ascending order
*/
SELECT d.employee_id,
CASE
    when  sum(d.deal_size) > s.quota then 'yes'
    else 'no'
    end as made_quota
FROM deals d
join sales_quotas s on d.employee_id = s.employee_id
group by d.employee_id , s.quota
order by d.employee_id
