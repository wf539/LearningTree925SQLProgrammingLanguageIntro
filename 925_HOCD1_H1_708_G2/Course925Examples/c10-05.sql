SELECT DivisionID, COUNT(*) AS Employees
FROM   Employees 
GROUP BY DivisionID;

SELECT MAX(Employees) Maxemps
FROM   (SELECT DivisionID, COUNT(*) AS Employees
        FROM   Employees GROUP BY DivisionID) d;
