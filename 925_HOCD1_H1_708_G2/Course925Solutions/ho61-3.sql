SELECT Country FROM Suppliers
EXCEPT
SELECT Country FROM Customers
ORDER BY Country;

-- In Oracle, the keyword is MINUS, not EXCEPT
SELECT Country FROM Suppliers
MINUS
SELECT Country FROM Customers
ORDER BY Country;
