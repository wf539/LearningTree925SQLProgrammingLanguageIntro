SELECT od.OrderID
      ,c.CompanyName
      ,od.ProductID
      ,p.ProductName
      ,od.UnitPrice
      ,od.Quantity
FROM   OrderDetails od
      ,Products p
      ,Orders o
      ,Customers c
WHERE  od.ProductID = p.ProductID
  AND  o.OrderID = od.orderID
  AND  c.CustomerID = o.CustomerID;
