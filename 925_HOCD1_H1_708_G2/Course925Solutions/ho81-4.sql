SELECT ROUND(SUM((Quantity*UnitPrice)*(1-Discount)),-3) AS SumNetAmount
FROM   OrderDetails;
