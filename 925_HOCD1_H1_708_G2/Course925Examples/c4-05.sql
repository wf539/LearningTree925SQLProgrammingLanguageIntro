SELECT EmployeeID, FirstName, LastName
      ,CurrentSalary*12 AS YearlySalary
FROM   Employees
WHERE  EmployeeID = 3;
