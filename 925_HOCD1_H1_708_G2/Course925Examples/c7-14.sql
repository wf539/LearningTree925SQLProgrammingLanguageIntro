SELECT FirstName
      ,LastName
      ,CurrentSalary
      ,COALESCE(Commission,CurrentSalary/10) AS Commission
      ,CurrentSalary+COALESCE(Commission,CurrentSalary/10) AS TotalPay
FROM   Employees;
