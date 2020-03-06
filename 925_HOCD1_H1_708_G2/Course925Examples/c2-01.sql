CREATE TABLE Divisions
(DivisionID     NUMERIC(5)  NOT NULL
,DivisionName   VARCHAR(40) NOT NULL);

CREATE TABLE Departments
(DivisionID     NUMERIC(5)  NOT NULL
,DepartmentID   NUMERIC(5)  NOT NULL
,DepartmentName VARCHAR(40) NOT NULL);
