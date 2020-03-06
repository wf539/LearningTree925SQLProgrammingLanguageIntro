SELECT d.DivisionId
      ,d.DivisionName
      ,e.FirstName
      ,e.LastName
FROM   Divisions d
LEFT JOIN   
       Employees e
ON     e.DivisionID = d.DivisionID
ORDER BY d.DivisionId
        ,e.LastName;
