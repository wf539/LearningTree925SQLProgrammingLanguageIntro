SELECT LastName, CurrentSalary
      ,AVG(CurrentSalary) AS Average
      ,CurrentSalary-AVG(CurrentSalary) AS Difference
FROM   Employees
WHERE  CurrentSalary<AVG(CurrentSalary);
