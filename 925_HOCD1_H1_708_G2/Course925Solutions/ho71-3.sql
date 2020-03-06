SELECT SUBSTRING(FirstName FROM 1 FOR 1)||'. '||LastName AS Name
FROM   Employees
ORDER BY LastName;

-- SQL Server uses comma to separate parameters
-- In SQL Server the concatenation operator is +
SELECT SUBSTRING(FirstName,1,1)+'. '+LastName AS Name
FROM   Employees
ORDER BY LastName;

-- Oracle uses comma to separate parameters
-- In Oracle, the function is SUBSTR, not SUBSTRING
SELECT SUBSTR(FirstName,1,1)||'. '||LastName AS Name
FROM   Employees
ORDER BY LastName;

