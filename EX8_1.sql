--Ex 8.1 Functions
--1. 
SELECT
	COUNT(*) AS Products
	, COUNT([SupplierID]) AS HaveSupplier
	, COUNT(*) - COUNT([SupplierID]) AS NoSupplier
FROM [dbo].[Products]

--2.
SELECT
	MAX([UnitPrice]) AS MaxPrice
	, MIN([UnitPrice]) AS MinPrice
	, ROUND(AVG([UnitPrice]), 2) AS AvgPrice
FROM [dbo].[Products]

--3.
SELECT
	SUM([CurrentSalary] + COALESCE([Commission], 0)) AS SumPay
	, AVG([CurrentSalary] + COALESCE([Commission], 0)) AS AvgPay
	, MAX([CurrentSalary] + COALESCE([Commission], 0)) AS MaxPay
	, MIN([CurrentSalary] + COALESCE([Commission], 0)) AS MinPay

FROM [dbo].[Employees]

--4.
SELECT 
	ROUND(SUM(([Quantity] * [UnitPrice]) * (1 - [Discount])), -3) AS SumNetAmount

FROM [dbo].[OrderDetails]
