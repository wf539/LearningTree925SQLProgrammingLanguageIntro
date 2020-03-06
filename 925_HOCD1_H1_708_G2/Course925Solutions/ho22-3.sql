ALTER TABLE Reservations
ADD CONSTRAINT CK_Reservations_Times
CHECK(StartTime < EndTime);