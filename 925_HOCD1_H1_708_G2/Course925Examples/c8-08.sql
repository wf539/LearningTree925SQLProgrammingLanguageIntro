SELECT CategoryID
      ,COUNT(*) AS Products
FROM   Products
GROUP BY CategoryID
HAVING COUNT(*) >= 10
ORDER BY CategoryID;
