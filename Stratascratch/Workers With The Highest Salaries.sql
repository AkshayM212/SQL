/*
You have been asked to find the job titles of the highest-paid employees.

Your output should include the highest-paid title or multiple titles with the same salary.
*/

select worker_title
from
(select *,
    rank() over(order by salary desc) rnk
from worker w 
join title t on t.worker_ref_id = w.worker_id) x
where rnk = 1
