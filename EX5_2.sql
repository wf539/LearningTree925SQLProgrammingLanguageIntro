--Ex 5.2
--1. List Divisions with their Employees;
--Include those without Employees;
--sort on DivisionID and LastName

SELECT
	DIV.[DivisionID]
	, DIV.[DivisionName]
	, EMP.[FirstName]
	, EMP.[LastName]
FROM [dbo].[Divisions] DIV
LEFT JOIN Employees EMP
ON EMP.[DivisionID] = DIV.[DivisionID]
ORDER BY EMP.[DivisionID]
	, EMP.[LastName]

--2. Modify query in EX5_1, step 2 to include Products without Supplier
SELECT
	PROD.[ProductName]
	, CAT.[CategoryName]
	, SUPP.CompanyName
FROM [dbo].[Products] PROD
INNER JOIN Categories CAT
ON CAT.CategoryID = PROD.CategoryID
LEFT OUTER JOIN Suppliers SUPP
ON SUPP.SupplierID = PROD.SupplierID
ORDER BY PROD.[ProductName]

--3. Modify query in EX5_1, step 3 to include Rooms without Reservations
SELECT
	CR.[RoomID]
	, CR.Name
	, RES.[StartTime]
	, RES.[EndTime]
FROM [dbo].[Reservations] RES
	RIGHT OUTER JOIN ConferenceRooms CR
	ON CR.RoomID = RES.RoomID
ORDER BY CR.[RoomID]
	, RES.[StartTime]

--4.Bonus To do
-- Modify above query to include Employee LastName
--SELECT
--	CR.[RoomID]
--	, CR.Name
--	, RES.[StartTime]
--	, RES.[EndTime]
--FROM [dbo].[Reservations] RES
--	RIGHT OUTER JOIN ConferenceRooms CR
--	ON CR.RoomID = RES.RoomID
--ORDER BY CR.[RoomID]
--	, RES.[StartTime]