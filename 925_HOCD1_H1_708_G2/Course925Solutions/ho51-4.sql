SELECT p.ProductName
FROM   Products p
JOIN   Suppliers s
ON     p.SupplierID = s.SupplierID
WHERE  s.Country = 'Norway'
ORDER BY p.ProductName;