SELECT LastName
      ,Commission
FROM   Employees
WHERE  Commission < 400;

SELECT LastName
      ,Commission
FROM   Employees
WHERE  NOT Commission < 400;

SELECT LastName
      ,Commission
FROM   Employees
WHERE  Commission <> 300;
