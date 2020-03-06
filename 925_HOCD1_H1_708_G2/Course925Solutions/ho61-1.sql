SELECT Country FROM Suppliers
UNION
SELECT Country FROM Customers
ORDER BY Country;
