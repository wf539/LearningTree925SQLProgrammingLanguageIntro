SELECT p.ProductName
FROM   Products p
      ,Suppliers s
WHERE  p.SupplierID = s.SupplierID
  AND  s.Country = 'Norway'
ORDER BY p.ProductName;