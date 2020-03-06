--Ex 4.2
--1. List Employees in Division 1
--Sort on LastName
SELECT
	[FirstName]
	, [LastName]
	--, [DivisionID]
FROM [dbo].[Employees]
WHERE [DivisionID] = 1
ORDER BY [LastName]

--2. List ProductID, ProductName, CategoryID, UnitPrice of all Products;
--Sort on CategoryID;
--Sort by descending UnitPrice within each Category;
--Sort by ProductID if UnitPrice is identical

--3. Includes WHERE clause: exclude Products whose UnitPrice is less than 50
SELECT
	[ProductID]
	, [ProductName]
	, [CategoryID]
	, [UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice] >= 50
ORDER BY [CategoryID]
	, [UnitPrice] DESC
	, [ProductID]

--4. Bonus: Poducts with 'Tofu' in its name
SELECT
	[ProductID]
	, [ProductName]
FROM [dbo].[Products]
WHERE [ProductName] LIKE '%tofu%'

--5. Bonus: Country and Company names of Suppliers outside specified list of countries;
--Sort on Country and CompanyName
SELECT
	[CompanyName]
	, [Country]
FROM [dbo].[Suppliers]
WHERE [Country] NOT IN('USA','UK','Canada')
ORDER BY
	[Country]
	, [CompanyName]

--6. Bonus: Find the top manager
SELECT
	[FirstName]
	, [LastName]
FROM [dbo].[Employees]
WHERE [ReportsTo] IS NULL