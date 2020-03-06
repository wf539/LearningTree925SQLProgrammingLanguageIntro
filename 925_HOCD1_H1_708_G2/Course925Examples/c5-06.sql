SELECT od.OrderID
      ,c.CompanyName
      ,od.ProductID
      ,p.ProductName
      ,od.UnitPrice
      ,od.Quantity
FROM   OrderDetails od
JOIN   Products p
ON     od.ProductID = p.ProductID
JOIN   Orders o
ON     o.OrderID = od.orderID
JOIN   Customers c
ON     c.CustomerID = o.CustomerID
ORDER BY od.OrderID, od.ProductID;
