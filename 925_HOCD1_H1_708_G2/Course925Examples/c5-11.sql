SELECT e.EmployeeID
      ,e.LastName
      ,e.ReportsTo
      ,m.LastName AS Manager
FROM   Employees e
LEFT OUTER JOIN
       Employees m
ON     e.ReportsTo = m.EmployeeID;
