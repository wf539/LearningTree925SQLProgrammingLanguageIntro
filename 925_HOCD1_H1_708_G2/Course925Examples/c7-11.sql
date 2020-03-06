SELECT EmployeeID, FirstName, LastName
      ,CASE Gender
            WHEN 'F' THEN 'Female'
            WHEN 'M' THEN 'Male'
       END AS Gender
FROM   Employees;
