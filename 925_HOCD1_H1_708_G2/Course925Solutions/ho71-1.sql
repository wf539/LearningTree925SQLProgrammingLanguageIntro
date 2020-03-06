SELECT EmployeeID
      ,FirstName
      ,LastName
      ,CurrentSalary
      ,ROUND(CurrentSalary,-3) AS SalRound
      ,TRUNC(CurrentSalary,-3) AS SalTrunc
FROM   Employees
ORDER BY EmployeeID;

-- SQL Server has no TRUNC function
-- Adding a third non-zero parameter causes truncating
SELECT EmployeeID
      ,FirstName
      ,LastName
      ,CurrentSalary
      ,ROUND(CurrentSalary,-3) AS SalRound
      ,ROUND(CurrentSalary,-3,1) AS SalTrunc
FROM   Employees
ORDER BY EmployeeID;
