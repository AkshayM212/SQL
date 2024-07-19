/*
Find the second highest salary of employees.
*/

select max(salary)
from employee
where salary <
(select max(salary) from employee)
