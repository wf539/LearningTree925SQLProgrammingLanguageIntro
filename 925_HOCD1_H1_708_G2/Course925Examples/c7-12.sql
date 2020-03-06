SELECT ProductID
      ,ProductName
      ,UnitPrice
      ,CASE WHEN UnitPrice < 10 THEN 'Low'
            WHEN UnitPrice >= 100 THEN 'High'
            ELSE 'Medium'
       END AS PriceRange
FROM   Products;
