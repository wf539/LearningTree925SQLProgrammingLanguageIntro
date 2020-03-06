SELECT UnitPrice
      ,ROUND(UnitPrice,0) AS RoundPrice
      ,TRUNC(UnitPrice,0) AS TruncPrice
FROM  Products
WHERE ProductId BETWEEN 25 AND 30
ORDER BY UnitPrice;

-- SQL Server has no TRUNC function
-- Adding a third non-zero parameter causes truncating
SELECT UnitPrice
      ,ROUND(UnitPrice,0) AS RoundPrice
      ,ROUND(UnitPrice,0,1) AS TruncPrice
FROM  Products
WHERE ProductId BETWEEN 25 AND 30
ORDER BY UnitPrice;