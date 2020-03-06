CREATE VIEW EmployeeOrders AS
SELECT EmployeeID
      ,COUNT(*) AS Orders
FROM   Orders
GROUP BY EmployeeID;



