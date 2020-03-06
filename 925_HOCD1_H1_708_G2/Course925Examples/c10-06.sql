CREATE VIEW EmpStatistics AS
SELECT DivisionID
      ,DepartmentID
      ,COUNT(*) AS Employees
      ,SUM(CurrentSalary) AS SumSal
FROM   Employees
GROUP BY DivisionID, DepartmentID;

SELECT * FROM EmpStatistics
ORDER BY DivisionID, DepartmentID;
