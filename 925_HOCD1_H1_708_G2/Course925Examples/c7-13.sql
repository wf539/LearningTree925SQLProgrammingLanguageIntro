SELECT FirstName
      ,LastName
      ,CurrentSalary
      ,COALESCE(Commission,50) AS Commission
      ,CurrentSalary+COALESCE(Commission,50) AS TotalPay
FROM   Employees;
