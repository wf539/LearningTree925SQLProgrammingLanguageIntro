SELECT FirstName
      ,LastName
      ,CurrentSalary
FROM   Employees
WHERE  CurrentSalary = (SELECT MAX(CurrentSalary) FROM Employees);