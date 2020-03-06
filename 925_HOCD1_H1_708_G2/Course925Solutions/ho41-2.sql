SELECT FirstName||' '||LastName AS EmployeeName
      ,Address
      ,City||' - '||Country AS City
FROM   Employees;

-- In SQL Server, the concatenation operator is the + sign
SELECT FirstName+' '+LastName AS EmployeeName
      ,Address
      ,City+' - '+Country AS City
FROM   Employees;

