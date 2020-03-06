SELECT CustomerID
      ,CompanyName
FROM   Customers c
WHERE  NOT EXISTS (SELECT 'x' FROM Orders o
                   WHERE  o.CustomerID = c.CustomerID )
ORDER BY CompanyName;