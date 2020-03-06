SELECT ContactName AS Name
FROM   Customers
UNION
SELECT ContactName
FROM   Suppliers
UNION
SELECT FirstName || ' ' || LastName
FROM   Employees;

--In SQL Server, the concatenation operator is the + sign
SELECT ContactName AS Name
FROM   Customers
UNION
SELECT ContactName
FROM   Suppliers
UNION
SELECT FirstName + ' ' + LastName
FROM   Employees;