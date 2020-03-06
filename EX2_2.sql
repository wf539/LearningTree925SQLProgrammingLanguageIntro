--Ex 2.1
--1. To Do: Create Conference Rooms Table

--2. 
ALTER TABLE [dbo].[ConferenceRooms]
ADD CONSTRAINT PK_Conference_Rooms
PRIMARY KEY (RoomID);

ALTER TABLE [dbo].[Reservations]
ADD CONSTRAINT PK_Reservations
PRIMARY KEY (ReservationID);

ALTER TABLE [dbo].[Reservations]
ADD CONSTRAINT FK_Reservations_Conference_Rooms
FOREIGN KEY (RoomID)
REFERENCES ConferenceRooms;

ALTER TABLE [dbo].[Reservations]
ADD CONSTRAINT FK_Reservations_Employees
FOREIGN KEY (EmployeeID)
REFERENCES Employees;

--ALTER TABLE [dbo].[Reservations]
--DROP CONSTRAINT CK_Reservations_Start_Time;

ALTER TABLE [dbo].[Reservations]
ADD CONSTRAINT CK_Reservations_Times
CHECK ([StartTime] < [EndTime]);

CREATE INDEX Ind_Company_Name ON Customers(CompanyName);
