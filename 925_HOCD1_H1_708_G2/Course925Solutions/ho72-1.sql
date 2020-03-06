SELECT FirstName
      ,LastName
      ,CurrentSalary
      ,COALESCE(Commission,0) AS Commission
      ,CurrentSalary+COALESCE(Commission,0) AS TotalPay
FROM   Employees
ORDER BY EmployeeID;
