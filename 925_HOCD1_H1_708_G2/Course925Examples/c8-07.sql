SELECT DivisionID
      ,DepartmentID
      ,COUNT(*) AS Employees
      ,SUM(CurrentSalary) AS SumSal
FROM   Employees
GROUP BY DivisionID, DepartmentID
ORDER BY DivisionID, DepartmentID;
