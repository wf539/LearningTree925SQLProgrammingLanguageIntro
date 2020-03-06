SELECT OrderId
      ,ProductID
      ,Quantity
      ,UnitPrice
      ,Discount
      ,ROUND((Quantity*UnitPrice)*(1-Discount),2) AS NetAmount
FROM   OrderDetails
WHERE OrderId BETWEEN 10652 and 10656
ORDER BY OrderId
        ,ProductID;
