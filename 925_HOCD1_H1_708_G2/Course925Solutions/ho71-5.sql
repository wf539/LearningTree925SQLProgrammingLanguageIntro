SELECT SupplierID
      ,PostalCode
      ,CAST(PostalCode AS INT) AS PostalInt 
FROM   Suppliers
WHERE  SupplierID BETWEEN 18 AND 21 
ORDER BY SupplierID;