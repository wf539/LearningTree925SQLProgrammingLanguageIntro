SELECT SUM(CurrentSalary+COALESCE(Commission,0)) AS SumSal
FROM   Employees;
