INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(1,101,'2006-11-20 08:00','2006-11-20 17:00',1);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(2,101,'2006-12-22 09:00','2006-12-22 10:00',2);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(3,300,'2006-12-22 09:00','2006-12-22 10:00',3);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(4,101,'2006-12-22 11:00','2006-12-22 13:00',3);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(5,220,'2006-12-22 10:30','2006-12-22 14:00',2);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(6,220,'2006-12-22 08:00','2006-12-22 10:00',1);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(7,220,'2006-12-22 10:00','2006-12-22 12:00',3);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(8,220,'2006-12-15 09:30','2006-12-15 10:30',3);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(9,220,'2006-12-15 11:00','2006-12-15 12:00',3);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(10,300,'2006-12-15 11:00','2006-12-15 14:00',1);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(11,101,'2006-12-22 08:00','2006-12-22 17:00',2);
INSERT INTO  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(12,220,'2006-12-22 16:30','2006-12-22 17:00',2);

-- Oracle needs to COMMIT;

-- Oracle has a non-standard default date and time format.
-- Before running the INSERT statements, use the ALTER SESSION statement 
-- to set the format to match the INSERT statement
-- ALTER SESSION SET NLS_DATE_FORMAT='yyyy-mm-dd hh24:mi';