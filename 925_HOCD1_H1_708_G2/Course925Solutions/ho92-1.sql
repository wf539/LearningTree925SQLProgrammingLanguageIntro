SELECT DivisionID
      ,FirstName
      ,LastName
      ,CurrentSalary
FROM   Employees m
WHERE  CurrentSalary = (SELECT MAX(CurrentSalary) 
                        FROM   Employees s
                        WHERE  s.DivisionID = m.DivisionID)
ORDER BY DivisionID;