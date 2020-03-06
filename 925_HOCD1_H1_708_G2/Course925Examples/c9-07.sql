SELECT CategoryID
      ,ProductId
      ,ProductName
      ,UnitPrice
FROM   Products p1
WHERE  UnitPrice = (SELECT MAX(UnitPrice) FROM Products p2
                    WHERE p2.CategoryID = p1.CategoryID)
ORDER BY CategoryID;