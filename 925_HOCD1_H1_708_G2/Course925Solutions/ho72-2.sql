SELECT CASE WHEN CurrentSalary >= 6000 THEN '***'
            WHEN CurrentSalary >= 5000 THEN ' **'
            WHEN CurrentSalary >= 4000 THEN '  *'
            ELSE '   '
       END AS Cat
      ,FirstName
      ,LastName
      ,CurrentSalary
FROM   Employees
ORDER BY EmployeeID; 
