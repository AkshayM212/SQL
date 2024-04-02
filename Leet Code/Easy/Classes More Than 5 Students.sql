/*
Write a solution to find all the classes that have at least five students.
*/
SELECT class FROM Courses
GROUP BY class
HAVING count(class) >= 5
