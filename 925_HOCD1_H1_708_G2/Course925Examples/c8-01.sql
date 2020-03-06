SELECT SUM(CurrentSalary) AS SumSal
      ,AVG(CurrentSalary) AS AvgSal
      ,ROUND(AVG(CurrentSalary),0) AS AvgRounded
      ,MIN(CurrentSalary) AS MinSal
      ,MAX(CurrentSalary) AS MaxSal
FROM   Employees;
