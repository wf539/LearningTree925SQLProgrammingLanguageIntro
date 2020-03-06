-- PostgreSQL :
CREATE TABLE Employees
(EmployeeID      INT         NOT NULL
,LastName        VARCHAR(20) NOT NULL
,FirstName       VARCHAR(10) NOT NULL
,Title           VARCHAR(25)
,TitleOfCourtesy VARCHAR(5)
,Gender          CHAR(1)
,BirthDate       TIMESTAMP
,HireDate        TIMESTAMP
,Address         VARCHAR(30)
,City            VARCHAR(15)
,Region          VARCHAR(10)
,PostalCode      VARCHAR(10)
,Country         VARCHAR(15)
,HomePhone       VARCHAR(20)
,Extension       VARCHAR(4)
,ReportsTo       INT
,CurrentSalary	 NUMERIC(5)  NOT NULL
,Commission	 NUMERIC(5)
,DivisionID	 NUMERIC(5)
,DepartmentID	 NUMERIC(5));

-- SQL Server:
CREATE TABLE Employees
(EmployeeID      INT         NOT NULL
,LastName        VARCHAR(20) NOT NULL
,FirstName       VARCHAR(10) NOT NULL
,Title           VARCHAR(25)
,TitleOfCourtesy VARCHAR(5)
,Gender          CHAR(1)
,BirthDate       DATETIME
,HireDate        DATETIME
,Address         VARCHAR(30)
,City            VARCHAR(15)
,Region          VARCHAR(10)
,PostalCode      VARCHAR(10)
,Country         VARCHAR(15)
,HomePhone       VARCHAR(20)
,Extension       VARCHAR(4)
,ReportsTo       INT
,CurrentSalary	 NUMERIC(5)  NOT NULL
,Commission	 NUMERIC(5)
,DivisionID	 NUMERIC(5)
,DepartmentID	 NUMERIC(5));

-- Oracle:
CREATE TABLE Employees
(EmployeeID      INT         NOT NULL
,LastName        VARCHAR(20) NOT NULL
,FirstName       VARCHAR(10) NOT NULL
,Title           VARCHAR(25)
,TitleOfCourtesy VARCHAR(5)
,Gender          CHAR(1)
,BirthDate       DATE
,HireDate        DATE
,Address         VARCHAR(30)
,City            VARCHAR(15)
,Region          VARCHAR(10)
,PostalCode      VARCHAR(10)
,Country         VARCHAR(15)
,HomePhone       VARCHAR(20)
,Extension       VARCHAR(4)
,ReportsTo       INT
,CurrentSalary	 NUMBER(18,4) NOT NULL
,Commission	 NUMBER(18,4)
,DivisionID	 NUMERIC(5)
,DepartmentID	 NUMERIC(5));