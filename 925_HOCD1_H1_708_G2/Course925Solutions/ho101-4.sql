SELECT EmployeeID
      ,COUNT(*) AS Orders
FROM   Orders
GROUP BY EmployeeID
HAVING COUNT(*) = (SELECT MAX(Orders)
                   FROM   (SELECT COUNT(*) AS Orders
                           FROM   Orders
                           GROUP BY EmployeeID) o);


