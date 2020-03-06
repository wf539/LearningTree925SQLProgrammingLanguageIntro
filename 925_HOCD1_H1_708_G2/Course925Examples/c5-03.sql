SELECT od.OrderID
      ,od.ProductID
      ,p.ProductName
      ,od.UnitPrice
      ,od.Quantity
FROM   OrderDetails od
JOIN   Products     p
ON     od.ProductID = p.ProductID;
