SELECT SupplierID
      ,CompanyName
FROM   Suppliers s
WHERE  NOT EXISTS (SELECT 'x' FROM Products p
                   WHERE  p.SupplierID = s.SupplierID);