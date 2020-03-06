SELECT CustomerID
FROM   Customers
EXCEPT
SELECT CustomerID
FROM   Orders;

-- In Oracle, the keyword is MINUS, not EXCEPT
SELECT CustomerID
FROM   Customers
MINUS
SELECT CustomerID
FROM   Orders;
