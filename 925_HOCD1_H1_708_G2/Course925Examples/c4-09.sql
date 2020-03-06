SELECT EmployeeID
      ,LastName
FROM   Employees
WHERE  LastName LIKE 'D%';

SELECT EmployeeID
      ,LastName
FROM   Employees
WHERE  LastName LIKE '%an';

SELECT EmployeeID
      ,LastName
FROM   Employees
WHERE  LastName LIKE '_a%';

