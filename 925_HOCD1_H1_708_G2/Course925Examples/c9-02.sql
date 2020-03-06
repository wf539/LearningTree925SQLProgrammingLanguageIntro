SELECT RoomID, Name 
FROM   ConferenceRooms
WHERE  RoomID NOT IN (SELECT RoomID FROM Reservations);
