SELECT COUNT(*) AS Products
      ,COUNT(SupplierID) AS HaveSupplier
      ,COUNT(*)-COUNT(SupplierID) AS NoSupplier
FROM   Products;