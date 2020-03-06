SELECT LastName
      ,Commission
FROM   Employees
WHERE  Commission IS NULL;

SELECT LastName
      ,Commission
FROM   Employees
WHERE  Commission IS NOT NULL;
