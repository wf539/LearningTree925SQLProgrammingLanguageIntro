SELECT DivisionID
      ,DepartmentID
      ,COUNT(*) AS Employees
      ,SUM(CurrentSalary) AS SumSal
FROM   Employees
GROUP BY DivisionID, DepartmentID
HAVING COUNT(*) > 1
ORDER BY DivisionID, DepartmentID;
