/*
Companies often perform salary analyses to ensure fair compensation practices. One useful analysis is to check if there are any employees earning more than their direct managers.

As a HR Analyst, you're asked to identify all employees who earn more than their direct managers. The result should include the employee's ID and name.
*/
select emp.employee_id, emp.name as employee_name 
from employee emp
join employee mng on emp.manager_id = mng.employee_id
where emp.salary > mng.salary 
