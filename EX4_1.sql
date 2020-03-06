--Ex 4.1
--1. To do: Return employee names and addresses

--2. Modify previous query with formatting
SELECT 
  [FirstName] + ' ' + [LastName] AS [Full name]
, [Address]
, [City] + ' - ' +  [Country] AS [City]
FROM [dbo].[Employees]

--3. Return product availability;
--Perform calculation;
--alias columns
SELECT
	[ProductID]	AS [ID]
	, [ProductName]	AS [Name]
	, [UnitsInStock] AS [InStock]
	, [UnitsOnOrder] AS [OnOrder]
	, [UnitsInStock] - [UnitsOnOrder] AS [Available]
FROM [dbo].[Products]

--4. List OrderDetails
--Include OrderID, ProductID, UnitPrice and Quatity;
--Include Amount (UnitPrice times Quantity);
--Show Discount as percent
--NetAmount after Discount applied
SELECT
	[OrderID]
	, [ProductID]
	, [UnitPrice]
	, [Quantity]
	, [UnitPrice] * [Quantity] AS [Amount]
	, [Discount] * 100 AS [PercDisc]
	, ([UnitPrice] * [Quantity]) * (1 - [Discount]) AS [NetAmount]
FROM [dbo].[OrderDetails]