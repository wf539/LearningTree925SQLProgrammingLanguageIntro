SELECT Commission 
FROM   Employees;

SELECT COUNT(Commission) AS Count
      ,AVG(Commission)   AS Avg
      ,SUM(Commission)   AS Sum
      ,MAX(Commission)   AS Max
      ,MIN(Commission)   AS Min
FROM   Employees;
