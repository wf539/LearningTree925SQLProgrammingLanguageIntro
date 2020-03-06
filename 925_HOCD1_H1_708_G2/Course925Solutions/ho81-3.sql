SELECT SUM(CurrentSalary+COALESCE(Commission,0)) AS SumPay
      ,AVG(CurrentSalary+COALESCE(Commission,0)) AS AvgPay
      ,MAX(CurrentSalary+COALESCE(Commission,0)) AS MaxPay
      ,MIN(CurrentSalary+COALESCE(Commission,0)) AS MinPay
FROM   Employees;
