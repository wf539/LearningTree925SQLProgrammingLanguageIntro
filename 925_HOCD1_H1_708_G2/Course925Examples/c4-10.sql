SELECT LastName
      ,FirstName 
      ,CurrentSalary AS Salary
FROM   Employees
ORDER BY CurrentSalary DESC
        ,LastName      ASC
        ,FirstName     ASC;

SELECT LastName
      ,FirstName 
      ,CurrentSalary AS Salary
FROM   Employees
ORDER BY Salary DESC
        ,LastName
        ,FirstName;

SELECT LastName
      ,FirstName 
      ,CurrentSalary AS Salary
FROM   Employees
ORDER BY 3 DESC
        ,1
        ,2;
