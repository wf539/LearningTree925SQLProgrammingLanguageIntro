SELECT ProductID
      ,ProductName
      ,CategoryID
      ,UnitPrice
FROM   Products
WHERE  UnitPrice >= 50
ORDER BY CategoryID
        ,UnitPrice DESC
        ,ProductID;
