SELECT CompanyName
      ,SUBSTRING(CompanyName FROM 4 FOR 8) AS NameSub 
FROM   Shippers;

-- SQL Server uses comma to separate parameters
SELECT CompanyName
      ,SUBSTRING(CompanyName, 4, 8) AS NameSub
FROM   Shippers;

-- Oracle uses comma to separate parameters
-- The function name is SUBSTR
SELECT CompanyName
      ,SUBSTR(CompanyName, 4, 8) AS NameSub
FROM   Shippers;