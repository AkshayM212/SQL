/*
Write a solution to report the name and bonus amount of each employee with a bonus less than 1000
*/
SELECT E.name, B.bonus
FROM Employee E
LEFT JOIN Bonus B ON E.empId = B.empId
WHERE bonus < 1000 OR bonus IS NULL;
