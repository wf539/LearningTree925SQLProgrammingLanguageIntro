ALTER TABLE Reservations
ADD CONSTRAINT FK_Reservations_Employees
FOREIGN KEY (EmployeeID)
REFERENCES Employees(EmployeeID);

ALTER TABLE Reservations
ADD CONSTRAINT FK_Reservations_ConferenceRoom
FOREIGN KEY (RoomID)
REFERENCES ConferenceRooms(RoomID);
