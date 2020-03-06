SELECT UPPER(LastName)
     ||'/'
     ||UPPER(FirstName)
     ||CASE GENDER WHEN 'M' THEN 'MR'
                   WHEN 'F' THEN 'MS'
       END AS TicketName
FROM   Employees
ORDER BY EmployeeID;

-- In SQL Server the concatenation operator is +
SELECT UPPER(LastName)
      +'/'
      +UPPER(FirstName)
      +CASE GENDER WHEN 'M' THEN 'MR'
                   WHEN 'F' THEN 'MS'
       END AS TicketName
FROM   Employees
ORDER BY EmployeeID;





