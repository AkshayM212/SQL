/*
Write a solution to find the employees who earn more than their managers
*/
SELECT A.name as Employee
FROM  Employee A
JOIN Employee B 
on A.id  = B.managerId
WHERE A.salary > B.salary;
