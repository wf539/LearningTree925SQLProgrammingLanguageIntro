SELECT p.ProductName
      ,c.CategoryName
      ,s.CompanyName
FROM   Products p
JOIN   Categories c
ON     p.CategoryID = c.CategoryID
JOIN   Suppliers s
ON     p.SupplierID = s.SupplierID
ORDER BY p.ProductName;