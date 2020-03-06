SELECT o.CustomerID
      ,ROUND(SUM((od.Quantity*od.UnitPrice)*(1-od.Discount)),-3) AS SumNetAmount
FROM   OrderDetails od
JOIN   Orders o
ON     od.OrderID = o.OrderID
GROUP BY o.CustomerID
HAVING ROUND(SUM((od.Quantity*od.UnitPrice)*(1-od.Discount)),-3) >= 100000
ORDER BY SumNetAmount DESC, CustomerID;
