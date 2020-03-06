SELECT LastName
      ,Commission
FROM   Employees
WHERE  Commission = NULL;

SELECT LastName
      ,Commission
FROM   Employees
WHERE  Commission <> NULL;

SELECT LastName
      ,Commission
FROM   Employees
WHERE  Commission = Commission;
