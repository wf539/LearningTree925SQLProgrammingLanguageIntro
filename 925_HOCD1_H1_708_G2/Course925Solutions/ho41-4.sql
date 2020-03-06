SELECT OrderID
      ,ProductID
      ,UnitPrice
      ,Quantity 
      ,UnitPrice*Quantity AS Amount
      ,Discount*100 AS PercDisc
      ,(UnitPrice*Quantity)*(1-Discount) AS NetAmount
FROM   OrderDetails;

