SELECT ReportsTo 
FROM   Employees;

SELECT COUNT(*) AS Emps
FROM   Employees;

SELECT COUNT(ReportsTo) AS HasMgr
FROM   Employees;

SELECT COUNT(DISTINCT ReportsTo) AS IsMgr
FROM   Employees;
