SELECT CompanyName,City,Country
FROM   Customers
UNION 
SELECT CompanyName,City,Country
FROM   Suppliers
ORDER BY CompanyName;

