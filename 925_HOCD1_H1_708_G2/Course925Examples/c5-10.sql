SELECT e.FirstName
      ,e.LastName
      ,d.DivisionName
FROM   Employees e
CROSS JOIN
       Divisions d;