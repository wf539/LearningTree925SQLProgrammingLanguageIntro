SELECT OrderDetails.OrderID
      ,OrderDetails.ProductID
      ,Products.ProductName
      ,OrderDetails.UnitPrice
      ,OrderDetails.Quantity
FROM   OrderDetails
JOIN   Products
ON     OrderDetails.ProductID = Products.ProductID;
