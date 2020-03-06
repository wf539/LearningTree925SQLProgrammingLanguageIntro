--Ex 7.2 Functions and CASE
--1. List Employee, CurrentSalary and Commission; show total pay; 
--set Commision to 0 if Commission is undefined; sort on EmployeeID
SELECT
	[FirstName]
	, [LastName]
	, [CurrentSalary]
	, COALESCE([Commission], 0) AS CommissionDue
	--, COALESCE([CurrentSalary] + [Commission], [CurrentSalary]) AS TotalPay
	, [CurrentSalary] + COALESCE([Commission], 0) AS TotalPay
FROM [dbo].[Employees]
ORDER BY [EmployeeID]

--2. List Employees and Current salary; Sort, then Categorise Employees by Salary range
SELECT
	CASE WHEN [CurrentSalary] >= 6000 THEN '***'
		 WHEN [CurrentSalary] >= 5000 THEN ' **'
		 WHEN [CurrentSalary] >= 4000 THEN '  *'
		ELSE ''
	END AS Cat
	, [FirstName]
	, [LastName]
	, [CurrentSalary]
FROM [dbo].[Employees]

--3. Bonus To do: List Employees; Format them airline ticket-style
--SELECT


--FROM [dbo].[Employees]