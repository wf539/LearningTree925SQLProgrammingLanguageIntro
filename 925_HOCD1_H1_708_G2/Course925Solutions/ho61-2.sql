SELECT Country FROM Suppliers
INTERSECT
SELECT Country FROM Customers
ORDER BY Country;
