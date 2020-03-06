SELECT ProductID
      ,ProductName
      ,CategoryID
      ,UnitPrice
FROM   Products
ORDER BY CategoryID
        ,UnitPrice DESC
        ,ProductID;
