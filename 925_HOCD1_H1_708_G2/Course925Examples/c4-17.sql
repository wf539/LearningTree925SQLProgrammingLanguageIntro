SELECT LastName
      ,ReportsTo
FROM   Employees
WHERE  ReportsTo IN (2,NULL);

SELECT LastName
      ,ReportsTo
FROM   Employees
WHERE  ReportsTo = 2
   OR  ReportsTo = NULL;