SELECT EmployeeID
      ,LastName
FROM   Employees
WHERE  EmployeeID NOT IN 
       (SELECT ReportsTo FROM Employees
        WHERE  ReportsTo IS NOT NULL);
