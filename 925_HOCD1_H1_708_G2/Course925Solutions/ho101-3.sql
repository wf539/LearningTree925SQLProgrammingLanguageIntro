SELECT * 
FROM   EmployeeOrders
WHERE  Orders = (SELECT MAX(Orders)
                 FROM   EmployeeOrders);

