ALTER TABLE Departments
ADD CONSTRAINT PK_Departments
PRIMARY KEY (DivisionID, DepartmentID);

ALTER TABLE Divisions
ADD CONSTRAINT UK_DivisionName
UNIQUE (DivisionName);