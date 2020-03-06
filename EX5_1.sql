--Ex 5.1
--1. List ProductName with its CategoryName;
--sort on ProductName
SELECT
	PROD.[ProductName]
	--, Products.[CategoryID]
	, CAT.[CategoryName]
	, SUPP.CompanyName
FROM [dbo].[Products] PROD
INNER JOIN Categories CAT
ON CAT.CategoryID = PROD.CategoryID
INNER JOIN Suppliers SUPP
ON SUPP.SupplierID = PROD.SupplierID
ORDER BY PROD.[ProductName]

--2. To do: Modify query above to include CompanyName of Supplier

--3. List Reservations;
--Include RoomID, Name, Start and End times;
--Sort on RoomID and StartTime
SELECT
	CR.[RoomID]
	, CR.Name
	, RES.[StartTime]
	, RES.[EndTime]
FROM [dbo].[Reservations] RES
	INNER JOIN ConferenceRooms CR
	ON CR.RoomID = RES.RoomID
ORDER BY CR.[RoomID]
	, RES.[StartTime]

--4. List Products and Suppliers from Norway
SELECT
	PROD.[ProductName]
	--, SUPP.[Country]
FROM [dbo].[Products] PROD
	INNER JOIN Suppliers SUPP
	ON SUPP.[SupplierID] = PROD.[SupplierID]
	WHERE SUPP.[Country] IN('Norway')
ORDER BY PROD.[ProductName]

--5. Bonus: Don't do it!