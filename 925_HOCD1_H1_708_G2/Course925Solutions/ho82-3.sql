SELECT CategoryID
      ,COUNT(*) AS Products
      ,COUNT(SupplierID) AS HaveSupplier
      ,COUNT(*)-COUNT(SupplierID) AS NoSupplier
FROM   Products
GROUP BY CategoryID
HAVING COUNT(*) >= 10
ORDER BY Products DESC, CategoryID;