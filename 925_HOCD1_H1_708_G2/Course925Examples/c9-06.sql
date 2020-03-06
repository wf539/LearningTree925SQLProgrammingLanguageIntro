SELECT LastName, CurrentSalary
      ,(SELECT AVG(CurrentSalary) FROM Employees) AS Average
      ,CurrentSalary-(SELECT AVG(CurrentSalary) FROM Employees) 
                                                    AS Difference
FROM   Employees
WHERE  CurrentSalary<(SELECT AVG(CurrentSalary) FROM Employees);
