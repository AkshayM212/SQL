/*
Find employees who are earning more than their managers. Output the employee's first name along with the corresponding salary.
*/

select emp.first_name as employee_name, emp.salary as employee_salary
from employee emp 
join employee mng on emp.manager_id = mng.id
where emp.salary > mng.salary
