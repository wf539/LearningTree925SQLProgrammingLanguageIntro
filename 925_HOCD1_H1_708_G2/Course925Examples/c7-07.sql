SELECT OrderID
      ,ShippedDate
      ,ShippedDate + interval '30 days' AS DueDate
FROM   Orders
WHERE  ShippedDate IS NOT NULL
ORDER BY OrderId;

-- Oracle or SQL Server:
SELECT OrderID
      ,ShippedDate
      ,ShippedDate + 30 AS DueDate
FROM   Orders
WHERE  ShippedDate IS NOT NULL
ORDER BY OrderId;
