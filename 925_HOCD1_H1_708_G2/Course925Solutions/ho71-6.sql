SELECT SupplierID
      ,PostalCode
      ,CAST(PostalCode AS INT) AS PostalInt 
FROM   Suppliers
ORDER BY SupplierID;