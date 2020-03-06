SELECT CategoryID
      ,COUNT(*) AS Products
      ,COUNT(SupplierID) AS HaveSupplier
      ,COUNT(*)-COUNT(SupplierID) AS NoSupplier
FROM   Products
GROUP BY CategoryID
ORDER BY Products DESC, CategoryID;