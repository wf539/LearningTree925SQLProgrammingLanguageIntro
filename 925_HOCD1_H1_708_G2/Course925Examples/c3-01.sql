INSERT INTO Departments
(DivisionID, DepartmentID, DepartmentName)
VALUES(1, 100, 'Accounting');

INSERT INTO Highpaid
SELECT FirstName, LastName
FROM   Employees
WHERE  CurrentSalary >= 6000;	
