SELECT DivisionID
      ,COUNT(*) AS Employees
      ,SUM(CurrentSalary) AS SumSal
FROM   Employees
GROUP BY DivisionID
ORDER BY DivisionID;
