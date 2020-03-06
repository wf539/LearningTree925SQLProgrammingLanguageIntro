SELECT EmployeeID
      ,LastName
FROM   Employees e
WHERE  NOT EXISTS
       (SELECT 'x' FROM Employees r
        WHERE  r.ReportsTo = e.EmployeeID);
