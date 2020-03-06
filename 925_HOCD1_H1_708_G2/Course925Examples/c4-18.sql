SELECT LastName
      ,ReportsTo
FROM   Employees
WHERE  ReportsTo NOT IN (2,NULL);

SELECT LastName
      ,ReportsTo
FROM   Employees
WHERE  ReportsTo <> 2
  AND  ReportsTo <> NULL;
