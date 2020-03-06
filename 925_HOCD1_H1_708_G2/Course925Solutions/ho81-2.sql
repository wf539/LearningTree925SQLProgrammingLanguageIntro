SELECT Max(UnitPrice) AS MaxPrice
      ,Min(UnitPrice) AS MinPrice
      ,ROUND(AVG(UnitPrice),2) AS AvgPrice
FROM   Products;
