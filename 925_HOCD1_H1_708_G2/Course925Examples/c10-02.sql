SELECT e.LastName, e.CurrentSalary
      ,a.AvgSalary AS Average
      ,e.CurrentSalary-a.AvgSalary AS Difference
FROM   Employees e
CROSS JOIN 
      (SELECT AVG(CurrentSalary) AS AvgSalary 
       FROM Employees) a      
WHERE  e.CurrentSalary<a.AvgSalary;
