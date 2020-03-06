SELECT CategoryID
      ,COUNT(*) AS Products
FROM   Products
GROUP BY CategoryID
ORDER BY CategoryID;
