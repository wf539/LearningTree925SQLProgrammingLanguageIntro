SELECT e.DivisionID, e.LastName, e.CurrentSalary
      ,a.AvgSalary AS Average
      ,e.CurrentSalary-a.AvgSalary AS Difference
FROM   Employees e
JOIN  (SELECT DivisionID, AVG(CurrentSalary) AS AvgSalary 
       FROM   Employees
       GROUP BY DivisionID) a 
ON     e.DivisionID=a.DivisionID     
WHERE  e.CurrentSalary<a.AvgSalary;
