/*
Write a solution to find employees who have the highest salary in each of the departments.

Return the result table in any order.
*/

with cte as
            (select d.name as Department  , E.name as Employee, salary,
                rank() over(partition by d.name order by salary desc) as rnk
            from Employee e
            join Department d on d.id = e.departmentId)
select Department, Employee, salary
from cte 
where rnk = 1;
