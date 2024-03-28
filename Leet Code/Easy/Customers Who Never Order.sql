/*
Write a solution to find all customers who never order anything.
*/
SELECT C.name AS Customers FROM Customers C
LEFT JOIN Orders O ON C.id = O.customerId
WHERE O.customerId IS NULL
