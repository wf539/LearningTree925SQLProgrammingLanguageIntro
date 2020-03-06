--Ex 7.1 Functions
--1. List Employees and current Salary; 
--Display Salary rounded to nearest thousand
--Display Salary truncated to nearest thousand

SELECT
	[EmployeeID]
	, [FirstName]
	, [LastName]
	,[CurrentSalary]
	, ROUND(CurrentSalary, -3) AS SalRound
	, ROUND(CurrentSalary, -3, 1) AS SalTrunc
FROM [dbo].[Employees]

--2. Compute NetAmount for OrderDetails as at EX4_1;
--round result to 2 d.p.;
--apply filter
SELECT
	[OrderID]
	, [ProductID]
	, [Quantity]
	, [UnitPrice]
	, [Discount]
	, ROUND((([Quantity] * [UnitPrice]) * (1 - [Discount])), 2) AS NetAmount
FROM [dbo].[OrderDetails]
WHERE [OrderID] BETWEEN 10652 AND 10656
ORDER BY [OrderID]
	, [ProductID]

--3. Apply format to Employee list
SELECT
	SUBSTRING([FirstName], 1, 1) + '. ' + [LastName] AS [Name]
FROM [dbo].[Employees]

--4. Get system datetime
SELECT GETUTCDATE()

--5. Bonus: List Supplier, Postal code for specified Suppliers
SELECT
	[SupplierID]
	, [PostalCode]
	, CAST([PostalCode] AS INT) AS PostCodeInt
FROM [dbo].[Suppliers]
WHERE [SupplierID] BETWEEN 18 AND 21