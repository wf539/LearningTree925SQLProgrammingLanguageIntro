SELECT DivisionID
      ,AVG(CurrentSalary) AS AvgSalary 
FROM Employees
GROUP BY DivisionID;
