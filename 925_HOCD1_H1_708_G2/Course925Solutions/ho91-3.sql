SELECT SupplierID
      ,CompanyName
FROM   Suppliers
WHERE  SupplierID NOT IN 
       (SELECT SupplierID FROM Products 
        WHERE  SupplierID IS NOT NULL);