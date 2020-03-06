SELECT Departments.DivisionID
      ,Divisions.DivisionName     
      ,Departments.DepartmentID
      ,Departments.DepartmentName
FROM   Departments
JOIN   Divisions
ON     Departments.DivisionID = Divisions.DivisionID;
