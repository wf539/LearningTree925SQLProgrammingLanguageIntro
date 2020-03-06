-- Standard (PostgreSQL and Oracle)
CREATE TABLE HighPaid AS 
SELECT FirstName, LastName
FROM Employees 
WHERE CurrentSalary >= 6000;

-- SQL Server
SELECT FirstName, LastName
INTO HighPaid
FROM Employees 
WHERE CurrentSalary >= 6000;
