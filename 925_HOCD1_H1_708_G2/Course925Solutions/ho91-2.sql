SELECT CustomerID
      ,CompanyName
FROM   Customers
WHERE  CustomerID NOT IN (SELECT CustomerID FROM Orders)
ORDER BY CompanyName;