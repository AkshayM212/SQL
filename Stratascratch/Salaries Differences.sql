/*
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries
*/

select(select max(salary)
from db_employee emp 
join db_dept dpt on emp.department_id = dpt.id
where department  = 'marketing') -

                                (select max(salary)
                                from db_employee emp 
                                join db_dept dpt on emp.department_id = dpt.id
                                where department ='engineering'
                                )
