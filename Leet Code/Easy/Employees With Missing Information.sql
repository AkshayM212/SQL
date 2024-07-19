/*
Write a solution to report the IDs of all the employees with missing information. The information of an employee is missing if:

The employee's name is missing, or
The employee's salary is missing.
Return the result table ordered by employee_id in ascending order

*/

with cte as
           ( select s.employee_id as employee_id
            from Employees e
            right join Salaries s on s.employee_id  = e.employee_id
            where e.name is null
            union
            select e.employee_id as employee_id
            from Employees e
            left join Salaries s on s.employee_id  = e.employee_id
            where s.salary is null)
select *
from cte
order by employee_id;
