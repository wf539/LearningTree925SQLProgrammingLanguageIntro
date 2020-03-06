
\connect eastwind student
\conninfo


SET DATESTYLE = YMD;


CREATE TABLE ConferenceRooms
(RoomID	  int         not null
,Name	  varchar(20) not null
,Capacity int         not null)
;
ALTER TABLE ConferenceRooms
ADD CONSTRAINT PK_ConferenceRooms 
PRIMARY KEY (RoomID)
;
CREATE TABLE Reservations
(ReservationID int  not null
,RoomID        int  not null
,EmployeeID    int  not null
,StartTime     timestamp not null
,EndTime       timestamp not null)
;
ALTER TABLE ConferenceRooms
ALTER COLUMN Name varchar(30)
;

ALTER TABLE Reservations
ADD CONSTRAINT PK_Reservations 
PRIMARY KEY (ReservationID)
;


ALTER TABLE Reservations
ADD CONSTRAINT FK_Reservations_Employees
FOREIGN KEY (EmployeeID)
REFERENCES Employees(EmployeeID)
;
ALTER TABLE Reservations
ADD CONSTRAINT CK_Reservations_Times
CHECK(StartTime < EndTime)
;
ALTER TABLE Reservations
ADD CONSTRAINT FK_Reservations_ConferenceRoom
FOREIGN KEY (RoomID)
REFERENCES ConferenceRooms(RoomID)
;

insert into  ConferenceRooms(RoomID,Name,Capacity)
VALUES(101,'Auditorium',250);
insert into  ConferenceRooms(RoomID,Name,Capacity)
VALUES(220,'2nd Floor Big room',30);
insert into  ConferenceRooms(RoomID,Name,Capacity)
VALUES(225,'2nd Floor Small room',10);
insert into  ConferenceRooms(RoomID,Name,Capacity)
VALUES(300,'3rd Floor Small room',10);
insert into  ConferenceRooms(RoomID,Name,Capacity)
VALUES(310,'3rd Floor Tiny room',6);



insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(1,101,'2006-11-20 08:00:00','2006-11-20 17:00:00',1);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(2,101,'2006-12-22 09:00:00','2006-12-22 10:00:00',2);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(3,300,'2006-12-22 09:00:00','2006-12-22 10:00:00',3);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(4,101,'2006-12-22 11:00:00','2006-12-22 13:00:00',3);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(5,220,'2006-12-22 10:30:00','2006-12-22 14:00:00',2);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(6,220,'2006-12-22 08:00:00','2006-12-22 10:00:00',1);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(7,220,'2006-12-22 10:00:00','2006-12-22 12:00:00',3);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(8,220,'2006-12-15 09:30:00','2006-12-15 10:30:00',3);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(9,220,'2006-12-15 11:00:00','2006-12-15 12:00:00',3);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(10,300,'2006-12-15 11:00:00','2006-12-15 14:00:00',1);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(11,101,'2006-12-22 08:00:00','2006-12-22 17:00:00',2);
insert into  Reservations(ReservationID,RoomID,StartTime,EndTime,EmployeeID)
VALUES(12,220,'2006-12-22 16:30:00','2006-12-22 17:00:00',2);



\d

select count(*) AS Reservations    from  Reservations;
select count(*) AS ConferenceRooms from  ConferenceRooms;







