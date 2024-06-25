/*
Find the number of workers by department who joined in or after April.


Output the department name along with the corresponding number of workers.


Sort records based on the number of workers in descending order.
*/

select department, count(department) as num_workers
from worker
where joining_date  > to_date('01-04-2014','dd-mm-yyyy')
group by department
order by num_workers desc
