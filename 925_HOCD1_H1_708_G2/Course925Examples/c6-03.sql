SELECT CompanyName
FROM   Customers
INTERSECT
SELECT CompanyName
FROM   Suppliers;

