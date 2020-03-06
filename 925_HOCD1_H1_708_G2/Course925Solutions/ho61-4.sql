SELECT Country FROM Customers
EXCEPT
SELECT Country FROM Suppliers
ORDER BY Country;

-- In Oracle, the keyword is MINUS, not EXCEPT
SELECT Country FROM Customers
MINUS
SELECT Country FROM Suppliers
ORDER BY Country;