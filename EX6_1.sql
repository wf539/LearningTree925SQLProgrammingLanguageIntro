--Ex 6.1
--1. Countries with Suppliers or Customers or both
SELECT
 [Country]
FROM [dbo].[Suppliers]

UNION

SELECT
	[Country]
FROM [dbo].[Customers]
ORDER BY [Country]

--2. Countries with both Customers and Suppliers
SELECT
 [Country]
FROM [dbo].[Suppliers]

INTERSECT

SELECT
	[Country]
FROM [dbo].[Customers]
ORDER BY [Country]

--3. Suppliers but no Customers
SELECT
 [Country]
FROM [dbo].[Suppliers]

EXCEPT

SELECT
	[Country]
FROM [dbo].[Customers]
ORDER BY [Country]

--test
--SELECT
-- [Country]

--FROM [dbo].[Customers]

--EXCEPT

--SELECT
--	[Country]

--FROM [dbo].[Suppliers]
--ORDER BY [Country]

--4. Customers but no Suppliers
SELECT
 [Country]

FROM [dbo].[Customers]

EXCEPT

SELECT
	[Country]

FROM [dbo].[Suppliers]
ORDER BY [Country]
