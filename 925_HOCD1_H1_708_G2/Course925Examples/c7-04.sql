SELECT CompanyName
      ,INITCAP(CompanyName) AS Initcapped  -- SQL Server does not have this function
FROM Customers
WHERE  CompanyName LIKE 'F%';

