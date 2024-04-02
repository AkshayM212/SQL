/*
Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id
*/
DELETE p1
FROM Person p1 INNER JOIN Person p2
ON p1.email = p2.email
WHERE p1.id > p2.id
