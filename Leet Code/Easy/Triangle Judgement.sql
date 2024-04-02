/*
Report for every three line segments whether they can form a triangle.
*/
SELECT x,y,z,
CASE WHEN
X+Y > Z AND Y+Z > X AND X+Z>Y 
THEN 'Yes'
ELSE 'No'
END AS triangle
FROM Triangle
