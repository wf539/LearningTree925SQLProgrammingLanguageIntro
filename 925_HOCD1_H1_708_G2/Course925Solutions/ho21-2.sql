CREATE TABLE Reservations
(ReservationID INT       NOT NULL
,RoomID        INT       NOT NULL
,EmployeeID    INT       NOT NULL
,StartTime     TIMESTAMP NOT NULL
,EndTime       TIMESTAMP NOT NULL);

-- In SQL Server, the datatype is DATETIME
CREATE TABLE Reservations
(ReservationID INT      NOT NULL
,RoomID        INT      NOT NULL
,EmployeeID    INT      NOT NULL
,StartTime     DATETIME NOT NULL
,EndTime       DATETIME NOT NULL);

-- In Oracle the datatype DATE includes both date and time
CREATE TABLE Reservations
(ReservationID INT  NOT NULL
,RoomID        INT  NOT NULL
,EmployeeID    INT  NOT NULL
,StartTime     DATE NOT NULL
,EndTime       DATE NOT NULL);

